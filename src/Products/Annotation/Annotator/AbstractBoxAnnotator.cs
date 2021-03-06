﻿
using GroupDocs.Annotation.Domain;
using GroupDocs.Annotation.WebForms.Products.Annotation.Entity.Web;
using System;
using System.Text;

namespace GroupDocs.Annotation.WebForms.Products.Annotation.Annotator
{
    public abstract class AbstractBoxAnnotator : BaseAnnotator
    {
        public AbstractBoxAnnotator(AnnotationDataEntity annotationData, PageData pageData)
            : base(annotationData, pageData)
        {
        }


        protected new AnnotationInfo InitAnnotationInfo()
        {
            AnnotationInfo annotationInfo = base.InitAnnotationInfo();
            // set draw annotation properties
            Rectangle box = annotationInfo.Box;
            StringBuilder builder = new StringBuilder().
                Append("M").Append(box.X).
                Append(",").Append(box.Y).
                Append("L").Append(box.Width).
                Append(",").Append(box.Height);
            annotationInfo.SvgPath = builder.ToString();
            // set annotation position
            annotationInfo.AnnotationPosition = new Point(annotationData.left, annotationData.top);
            return annotationInfo;
        }

        protected override Rectangle GetBox()
        {
            string svgPath = annotationData.svgPath;
            string startPoint = svgPath.Replace("[a-zA-Z]+", "").Split(' ')[0];
            string endPoint = svgPath.Replace("[a-zA-Z]+", "").Split(' ')[1];
            string[] start = startPoint.Split(',');
            float startX = float.Parse(start.Length > 0 ? start[0].Replace("M", "") : "0");
            float startY = float.Parse(start.Length > 0 ? start[1].Replace("M", "") : "0");
            string[] end = endPoint.Split(',');
            float endX = float.Parse(end.Length > 0 ? end[0].Replace("L", "") : "0") - startX;
            float endY = float.Parse(end.Length > 1 ? end[1].Replace("L", "") : "0") - startY;
            return new Rectangle(startX, startY, endX, endY);
        }
    }
}