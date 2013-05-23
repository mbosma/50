<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>College of Technology Timeline</title>
		<link rel="stylesheet" type="text/css" href="/50/assets/css/50.css">
        <!-- jQuery -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <!-- BEGIN TimelineJS -->
        <script type="text/javascript" src="assets/js/storyjs-embed.js"></script>
        <script>
            $(document).ready(function() {
                createStoryJS({
					type:       'timeline',
                    width:      '100%',
                    height:     '600',
                    source:     'data.cfm',
                    embed_id:   'my-timeline',
					start_at_slide: 2
                });
            });
        </script>
        <!-- END TimelineJS -->
    </head>
    
    <body bgcolor="#fff">
		<div class="header"><img src="assets/images/50year-technology.png" width="150" height="152" alt="CoT celebrates 50 years"></div>
		<div id="my-timeline"></div>
    </body>
</html>