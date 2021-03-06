﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Annotation.aspx.cs" Inherits="GroupDocs.Annotation.WebForms.Annotation" %>

<%
    GroupDocs.Annotation.WebForms.Products.Common.Config.GlobalConfiguration config = new GroupDocs.Annotation.WebForms.Products.Common.Config.GlobalConfiguration();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Annotation for .NET Web Forms</title>
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/all.min.css">
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/v4-shims.min.css">
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/swiper.min.css">
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/jquery-ui.min.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/circle-progress.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/viewer/css/viewer.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/viewer/css/viewer.mobile.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/viewer/css/viewer-dark.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/annotation/css/annotation.css" />
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/swiper.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.initialize.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.timeago.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/es6-promise.auto.js"></script>
    <script type="text/javascript" src="/annotation/resources/viewer/js/viewer.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/svg.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/svg.draw.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/drawSvgAnnotation.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/drawTextAnnotation.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/drawFieldAnnotation.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/annotation.js"></script>
</head>
<body>
    <div id="element"></div>
    <script type="text/javascript">
        $('#element').viewer({
            applicationPath: 'http://<%= config.Server.HostAddress%>:<%= config.Server.HttpPort%>/annotation',
            defaultDocument: '<%= config.Annotation.DefaultDocument%>',
            htmlMode: false,
            preloadPageCount: <%= config.Annotation.PreloadPageCount%>,
            zoom : false,
            pageSelector: <%= config.Common.isPageSelector.ToString().ToLowerInvariant()%>,
            search: false,
            thumbnails: false,
            rotate: false,
            download: <%= config.Common.isDownload.ToString().ToLowerInvariant()%>,
            upload: <%= config.Common.isUpload.ToString().ToLowerInvariant()%>,
            print: <%= config.Common.isPrint.ToString().ToLowerInvariant()%>,
            browse: <%= config.Common.isBrowse.ToString().ToLowerInvariant()%>,
            rewrite: <%= config.Common.isRewrite.ToString().ToLowerInvariant()%>
            });
        $('#element').annotation({
            textAnnotation: <%= config.Annotation.isTextAnnotation.ToString().ToLowerInvariant()%>,
            areaAnnotation: <%= config.Annotation.isAreaAnnotation.ToString().ToLowerInvariant()%>,
            pointAnnotation: <%= config.Annotation.isPointAnnotation.ToString().ToLowerInvariant()%>,
            textStrikeoutAnnotation: <%= config.Annotation.isTextStrikeoutAnnotation.ToString().ToLowerInvariant()%>,
            polylineAnnotation: <%= config.Annotation.isPolylineAnnotation.ToString().ToLowerInvariant()%>,
            textFieldAnnotation: <%= config.Annotation.isTextFieldAnnotation.ToString().ToLowerInvariant()%>,
            watermarkAnnotation: <%= config.Annotation.isWatermarkAnnotation.ToString().ToLowerInvariant()%>,
            textReplacementAnnotation: <%= config.Annotation.isTextReplacementAnnotation.ToString().ToLowerInvariant()%>,
            arrowAnnotation: <%= config.Annotation.isArrowAnnotation.ToString().ToLowerInvariant()%>,
            textRedactionAnnotation: <%= config.Annotation.isTextRedactionAnnotation.ToString().ToLowerInvariant()%>,
            resourcesRedactionAnnotation: <%= config.Annotation.isResourcesRedactionAnnotation.ToString().ToLowerInvariant()%>,
            textUnderlineAnnotation: <%= config.Annotation.isTextUnderlineAnnotation.ToString().ToLowerInvariant()%>,
            distanceAnnotation: <%= config.Annotation.isDistanceAnnotation.ToString().ToLowerInvariant()%>,
            downloadOriginal:  <%= config.Annotation.isDownloadOriginal.ToString().ToLowerInvariant()%>,
            downloadAnnotated:  <%= config.Annotation.isDownloadAnnotated.ToString().ToLowerInvariant()%>
        });
    </script>
</body>
</html>

