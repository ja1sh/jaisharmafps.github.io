<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Processing...</title>
    <script type="text/javascript">
        function getQueryStringParameter(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        function redirectToUrl() {
            const url = getQueryStringParameter('url');
            if (url) {
                window.location.href = url;
            } else {
                document.getElementById('message').innerText = 'No URL provided in the query string.';
            }
        }

        window.onload = redirectToUrl;
    </script>
</head>
<body>
    <p id="message">...</p>
</body>
</html>
