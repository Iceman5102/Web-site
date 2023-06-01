<?php
function render($tmp){
    if(file_exists('templates/'.$tmp.'.php')){
        ob_start();
        extract();
        require 'templates/'.$tmp.'php';
        return ob_get_clean();
    }
}