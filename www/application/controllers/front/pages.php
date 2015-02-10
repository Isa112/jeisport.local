<?php

mb_internal_encoding("UTF-8");

function mb_ucfirst($text) {
    return mb_strtoupper(mb_substr($text, 0, 1)) . mb_substr($text, 1);
}

class Pages extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->form_validation->set_message('required', 'Поле "%s" обязательно для заполения');
        $this->form_validation->set_message('valid_email', 'Поле "%s" должно содержать валидный E-mail адрес');
    }

    public function view($page = 'home') {

        if ($this->input->get('sid') != '') {
            $this->session->set_userdata('phpbb_sid', $this->input->get('sid'));
        }

        if (!file_exists(APPPATH . '/views/front/pages/' . $page . '.php')) {
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        }

        $categories = $this->categories_model->get_categories_for_front();

        $data['title'] = 'Jeisport - Самая обширная база спортивных клубов Москвы!';
        $data['categories'] = $categories;
        $data['news'] = $this->news_model->get3news_for_front();
        $data['posts'] = $this->blogs_model->get3posts_for_front();
        $maintext = $this->main_model->get_maintext();

        $data['maintext'] = $maintext['text'];

        $this->load->view('front/templates/metahead', $data);
        $this->load->view('front/templates/header', $data);
        $this->load->view('front/templates/sub-menu', $data);
        $this->load->view('front/pages/' . $page, $data);
        $this->load->view('front/templates/footer', $data);
    }

    public function sports($category) {
        $categories = $this->categories_model->get_categories_for_front();
        $data['categories'] = $categories;

        $category = $this->categories_model->get_category_by_url_for_front($category);
        if (!$category) {
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        } else {
            $sports = $this->sports_model->get_sports_for_category_front($category['id']);
            $data['sports'] = $sports;
            if (!$sports) {
                $this->output->set_status_header('404');
                $this->load->view('front/pages/404', $data);
            } else {
                $data['title'] = $category['name'];
                $data['stitle'] = '';
                $data['category'] = $category;

                $this->load->view('front/templates/metahead', $data);
                $this->load->view('front/templates/header', $data);
                $this->load->view('front/templates/sub-menu', $data);
                $this->load->view('front/templates/filters', $data);
                $this->load->view('front/templates/breadcrumbs', $data);
                $this->load->view('front/pages/sports', $data);
                $this->load->view('front/templates/footer', $data);
            }
        }
    }

    public function points($category, $sport) {
        $categories = $this->categories_model->get_categories_for_front();
        $data['categories'] = $categories;

        $sport = $this->sports_model->get_sport_by_url($sport);
        if (!$sport) {
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        } else {
            $points = $this->points_model->get_points_for_front($sport['id']);
            if (!$points) {
                $this->output->set_status_header('404');
                $this->load->view('front/pages/404', $data);
            } else {
                $data['points'] = $points;
                $category = $this->categories_model->get_category_by_url_for_front($category);
                if (!$category) {
                    $this->output->set_status_header('404');
                    $this->load->view('front/pages/404', $data);
                } else {
                    $data['stitle'] = $sport['name'];
                    $data['category'] = $category;

                    $data['sport'] = $sport;

                    $sports = $this->sports_model->get_sports_for_category_front($category['id']);
                    $data['sports'] = $sports;

                    $this->load->view('front/templates/metahead', $data);
                    $this->load->view('front/templates/header', $data);
                    $this->load->view('front/templates/sub-menu', $data);
                    $this->load->view('front/templates/filters', $data);
                    $this->load->view('front/templates/breadcrumbs', $data);
                    $this->load->view('front/pages/points', $data);
                    $this->load->view('front/templates/footer', $data);
                }
            }
        }
    }

    public function point($category, $sport, $point) {
        $categories = $this->categories_model->get_categories_for_front();
        $data['categories'] = $categories;
        $point = $this->points_model->get_point_by_url_for_front($point);
        $sport = $this->sports_model->get_sport_by_url_for_front($sport);
        $category = $this->categories_model->get_category_by_url_for_front($category);

        $data['stitle'] = $point['name'];
        $data['category'] = $category;
        $data['sport'] = $sport;
        $data['point'] = $point;

        $data['subway1'] = $this->points_model->get_subway_for_point_front($point['subway1_id']);
        $data['subway2'] = $this->points_model->get_subway_for_point_front($point['subway2_id']);

        $data['halls'] = $this->points_model->get_halls_for_point_for_front($point['id']);

        $treners = $this->points_model->get_treners_for_point_for_front($point['id']);
        $data['treners'] = array_chunk($treners, 4);
        $data['images'] = $this->points_model->get_images_for_point_for_front($point['id']);

        $sports = $this->sports_model->get_sports_for_category_front($category['id']);
        $data['sports'] = $sports;
        if (!$point):
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        else:
            $this->load->view('front/templates/metahead', $data);
            $this->load->view('front/templates/header', $data);
            $this->load->view('front/templates/sub-menu', $data);
            $this->load->view('front/templates/filters', $data);
            $this->load->view('front/pages/point', $data);
            $this->load->view('front/templates/footer', $data);
        endif;
    }

    public function news($new) {
        $categories = $this->categories_model->get_categories_for_front();
        $data['categories'] = $categories;

        $new = $this->news_model->get_new_by_url_for_front($new);
        if (!$new) {
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        } else {
            $data['title'] = mb_ucfirst($new['name']);
            $data['new'] = $new;

            $this->load->view('front/templates/metahead', $data);
            $this->load->view('front/templates/header', $data);
            $this->load->view('front/templates/sub-menu', $data);
            $this->load->view('front/pages/news', $data);
            $this->load->view('front/templates/footer', $data);
        }
    }

    public function incnewviews() {
        if ($this->input->post('id')) {
            $id = $this->input->post('id');
            $this->front_model->update_new_views($id);
        }
    }

    public function incblogviews() {
        if ($this->input->post('id')) {
            $id = $this->input->post('id');
            $this->front_model->update_blog_views($id);
        }
    }

    public function blog($blog) {
        $categories = $this->categories_model->get_categories_for_front();
        $data['categories'] = $categories;

        $blog = $this->blogs_model->get_blog_by_url_for_front($blog);
        if (!$blog) {
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        } else {
            $data['title'] = mb_ucfirst($blog['name']);
            $data['blog'] = $blog;

            $this->load->view('front/templates/metahead', $data);
            $this->load->view('front/templates/header', $data);
            $this->load->view('front/templates/sub-menu', $data);
            $this->load->view('front/pages/blog', $data);
            $this->load->view('front/templates/footer', $data);
        }
    }

    public function _mail_encode($text, $encoding) {
        $result = "=?" . $encoding . "?b?" . base64_encode($text) . "?=";
        return $result;
    }

    public function sendrequest($action = null) {
        if (!$action) {
            $this->load->view('front/pages/sendrequest');
        } elseif ($action == 'save') {
            if ($this->input->post('do') == 'sendrequest') {
                $this->form_validation->set_rules('name', 'Имя', 'trim|required|xss_clean');
                $this->form_validation->set_rules('age', 'Возраст', 'trim|required|xss_clean');
                $this->form_validation->set_rules('sex', 'Пол', 'trim|required|xss_clean');
                $this->form_validation->set_rules('weight', 'Вес', 'trim|required|xss_clean');
                $this->form_validation->set_rules('sports', 'Какими видами спорта хотели бы заниматься', 'trim|required|xss_clean');
                $this->form_validation->set_rules('subway', 'Ближайшее метро', 'trim|required|xss_clean');
                $this->form_validation->set_rules('contrains', 'Противопоказания от врача', 'trim|required|xss_clean');
                $this->form_validation->set_rules('canpay', 'Сколько готовы платить в месяц', 'trim|required|xss_clean');
                $this->form_validation->set_rules('email', 'E-mail', 'trim|required|valid_email|xss_clean');
                $this->form_validation->set_rules('phone', 'Телефон', 'trim|required|xss_clean');

                $this->form_validation->set_error_delimiters('<p style="color:red;">', '</p>');

                if ($this->form_validation->run() == FALSE) {
                    $this->load->view('front/pages/sendrequest');
                } else {
                    $arr = array(
                        'error' => '<div class="form-item" style="color:green; font-weight:bold;padding: 10px 30px; margin-top: 150px;"><strong>Спасибо! </strong>Ваша заявка была успешно отправлена! Ожидайте, в скором времени наш менеджер свяжется с вами</div>'
                    );
                    echo $arr['error'];
                    $this->front_model->set_request();
                    $to = $this->admins_model->get_email();
                }
            } else {
                echo 'Неверный post запрос';
            }
        } else {
            echo 'Ошибка при отправке формы';
        }
    }

    public function getStudentTicket($action = null) {
        if (!$action) {
            $this->load->view('front/pages/sendStudentTicket');
        } elseif ($action == 'save') {
            if ($this->input->post('do') == 'sendsbs') {
                $this->form_validation->set_rules('name', 'Имя', 'trim|required|xss_clean');
                $this->form_validation->set_rules('sname', 'Фамилия', 'trim|required|xss_clean');
                $this->form_validation->set_rules('mname', 'Отчество', 'trim|required|xss_clean');
                $this->form_validation->set_rules('univer', 'Место учебы', 'trim|required|xss_clean');
                $this->form_validation->set_rules('contacts', 'Контакты', 'trim|required|xss_clean');
                $this->form_validation->set_rules('delivery', 'Доставка', 'trim|xss_clean');

                $this->form_validation->set_error_delimiters('<p style="color:red;">', '</p>');

                if ($this->form_validation->run() == FALSE) {
                    $this->load->view('front/pages/sendStudentTicket');
                } else {
                    $arr = array(
                        'error' => '<div class="form-item" style="color:green; font-weight:bold;padding: 10px 30px; margin-top: 30px; text-align: center;"><strong>Спасибо! </strong>Ваша заявка была успешно отправлена! Ожидайте, в скором времени наш менеджер свяжется с вами</div>'
                    );
                    echo $arr['error'];
                    $this->front_model->set_sbs();
                    //$to = $this->admins_model->get_email();
                }
            } else {
                echo 'Неверный post запрос';
            }
        } else {
            echo 'Ошибка при отправке формы';
        }
    }

    public function send_backcall_from_point($action = null) {
        if (!$action) {
            $this->load->view('front/pages/sendbackcall');
        } elseif ($action == 'save') {
            if ($this->input->post('do') == 'sendbackcall') {
                $this->form_validation->set_rules('name', 'Имя', 'trim|required|xss_clean');
                $this->form_validation->set_rules('phone', 'Телефон', 'trim|required|xss_clean');

                $this->form_validation->set_error_delimiters('<p style="color:red;">', '</p>');

                if ($this->form_validation->run() == FALSE) {
                    $this->load->view('front/pages/sendbackcall');
                } else {
                    $arr = array(
                        'error' => '<div class="form-item" style="color:green; font-weight:bold;padding: 10px 30px; margin-top: 30px; text-align: center;"><strong>Спасибо! </strong>Ваша заявка была успешно отправлена! Ожидайте, в скором времени наш менеджер свяжется с вами</div>'
                    );
                    echo $arr['error'];
                    $this->front_model->set_backcall();
                    $point_url = $this->input->post('point_url');
                    //$to = $this->admins_model->get_email();

                    $config = array(
                        'protocol' => 'smtp',
                        'smtp_host' => 'ssl://smtp.googlemail.com',
                        'smtp_port' => 465,
                        'smtp_user' => 'officialakniet@gmail.com',
                        'smtp_pass' => 'googstud321',
                        'mailtype' => 'html',
                        'charset' => 'utf-8'
                    );
                    $this->load->library('email');
                    $this->email->initialize($config);

                    $this->email->set_newline("\r\n");
                    $this->email->from('officialakniet@gmail.com', 'Сайт ' . str_ireplace('http://', '', substr(base_url(), 0, -1)));
                    $this->email->to('protected.for@gmail.com');
                    $this->email->subject('Новый заказ на обратный звонок');
                    $this->email->message(
                            'Имя: ' . $this->input->post('name') . '<br/>' .
                            'Телефон: ' . $this->input->post('phone') . '<br/>' .
                            'Ссылка на спорт. точку: ' . $this->input->post('point_url') . '<br/>' .
                            'Дата отправки: ' . date('d.m.Y H:i:s') . '<br/>' .
                            'IP-адрес: ' . $this->input->ip_address()
                    );
                    $this->email->send();
                }
            } else {
                echo 'Неверный post запрос';
            }
        } else {
            echo 'Ошибка при отправке формы';
        }
    }

    public function contacts() {
        if (!file_exists(APPPATH . '/views/front/pages/contacts.php')) {
            $this->output->set_status_header('404');
            $this->load->view('front/pages/404', $data);
        }

        if ($this->input->post('do') == 'sendfeedback') {
            $this->form_validation->set_rules('name', 'Имя', 'trim|required|xss_clean');
            $this->form_validation->set_rules('email', 'E-mail', 'trim|valid_email|required|xss_clean');
            $this->form_validation->set_rules('phone', 'Телефон', 'trim|required|xss_clean');
            $this->form_validation->set_rules('theme', 'Тема сообщения', 'trim|required|xss_clean');
            $this->form_validation->set_rules('msg', 'Сообщение', 'trim|required|xss_clean');
            $this->form_validation->set_error_delimiters('<p style="color:red;margin-left:15px;">', '</p>');
            if ($this->form_validation->run() == FALSE) {
                $categories = $this->categories_model->get_categories_for_front();

                $data['title'] = 'Контакты Jeisport - Самая обширная база спортивных клубов Москвы!';
                $data['categories'] = $categories;

                $this->load->view('front/templates/metahead', $data);
                $this->load->view('front/templates/header', $data);
                $this->load->view('front/templates/sub-menu', $data);
                $this->load->view('front/pages/contacts', $data);
                $this->load->view('front/templates/footer', $data);
            } else {
                $arr = array(
                    'error' => '<div class="form-item" style="color:green; font-weight:bold;padding: 10px 30px;"><strong>Спасибо! </strong>Ваше сообщение было успешно отправлено! Ожидайте, в скором времени наш менеджер ответит вам</div>'
                );
                $this->session->set_userdata($arr);
                $this->front_model->save_feedback();
                redirect('contacts');
            }
        } else {

            $categories = $this->categories_model->get_categories_for_front();

            $data['title'] = 'Контакты Jeisport - Самая обширная база спортивных клубов Москвы!';
            $data['categories'] = $categories;

            $this->load->view('front/templates/metahead', $data);
            $this->load->view('front/templates/header', $data);
            $this->load->view('front/templates/sub-menu', $data);
            $this->load->view('front/pages/contacts', $data);
            $this->load->view('front/templates/footer', $data);
        }
    }

    public function trener($id) {
        $trener = $this->points_model->get_trener_for_point($id);
        $data['point'] = $this->input->post('point');
        $data['trener'] = $trener;
        $this->load->view('front/pages/trener', $data);
    }

}
