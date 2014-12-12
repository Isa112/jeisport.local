<?php

class Settings extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function maintext($edit = null) {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        $data['title'] = 'Административная панель';
        $data['maintext'] = $this->main_model->get_maintext();

        if (!$edit) {
            $this->load->view('admin/templates/metahead', $data);
            $this->load->view('admin/templates/navbar', $data);
            $this->load->view('admin/pages/settings/templates/left-nav', $data);
            $this->load->view('admin/pages/settings/maintext', $data);
            $this->load->view('admin/templates/footer', $data);
        } else {
            if ($this->input->post('do') == 'maintextEdit') {
                $this->form_validation->set_rules('text', 'Текст', 'trim|xss_clean');
                $this->form_validation->set_error_delimiters('<span class="label label-danger">', '</span>');

                if ($this->form_validation->run() == FALSE) {
                    $this->load->view('admin/templates/metahead', $data);
                    $this->load->view('admin/templates/navbar', $data);
                    $this->load->view('admin/pages/settings/templates/left-nav', $data);
                    $this->load->view('admin/pages/settings/maintext/edit', $data);
                    $this->load->view('admin/templates/footer', $data);
                } else {
                    $this->main_model->update_maintext();
                    $arr = array(
                        'error' => '<div class="alert alert-success" role="alert"><strong>Успех! </strong>Текст на главной странице был успешно обновлен!</div>'
                    );
                    $this->session->set_userdata($arr);
                    redirect('admin/settings/maintext/edit');
                }
            } else {
                $this->load->view('admin/templates/metahead', $data);
                $this->load->view('admin/templates/navbar', $data);
                $this->load->view('admin/pages/settings/templates/left-nav', $data);
                $this->load->view('admin/pages/settings/maintextedit', $data);
                $this->load->view('admin/templates/footer', $data);
            }
        }
    }

    public function tag_del() {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        if ($this->input->post('id')) {
            $id = $this->input->post('id');
            $this->main_model->delete_tag($id);
        }
    }

}
