
    function getCsrfToken() {
        return {
            '<?= csrf_token() ?>': '<?= csrf_hash() ?>'
        };
    }
