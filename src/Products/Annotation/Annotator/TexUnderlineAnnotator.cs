﻿using GroupDocs.Annotation.Domain;
using GroupDocs.Annotation.WebForms.Products.Annotation.Entity.Web;
using System;

namespace GroupDocs.Annotation.WebForms.Products.Annotation.Annotator
{
    public class TexUnderlineAnnotator : AbstractSvgAnnotator
    {
        public TexUnderlineAnnotator(AnnotationDataEntity annotationData, PageData pageData)
            : base(annotationData, pageData)
        {
        }
        
        public override AnnotationInfo AnnotateWord()
        {
            SetFixTop(true);
            // init possible types of annotations
            AnnotationInfo underlineAnnotation = InitAnnotationInfo();
            // set line color
            underlineAnnotation.PenColor = 1201033;
            return underlineAnnotation;
        }
        
        public override AnnotationInfo AnnotatePdf()
        {
            SetFixTop(false);
            AnnotationInfo underlineAnnotation = InitAnnotationInfo();
            underlineAnnotation.Guid = annotationData.id.ToString();
            underlineAnnotation.AnnotationPosition = new Point(annotationData.left, annotationData.top);
            underlineAnnotation.PenColor = 1201033;
            return underlineAnnotation;
        }
        
        public override AnnotationInfo AnnotateCells()
        {
            throw new NotSupportedException(String.Format(Message, annotationData.type));
        }
        
        public override AnnotationInfo AnnotateSlides()
        {
            SetFixTop(true);
            AnnotationInfo underlineAnnotation = InitAnnotationInfo();
            underlineAnnotation.PenColor = 0;
            underlineAnnotation.AnnotationPosition = new Point(annotationData.left, annotationData.top);
            return underlineAnnotation;
        }
        
        public override AnnotationInfo AnnotateImage()
        {
            SetFixTop(false);
            // init possible types of annotations
            AnnotationInfo underlineAnnotation = InitAnnotationInfo();
            // set line color
            underlineAnnotation.PenColor = 1201033;
            return underlineAnnotation;
        }
        
        public override AnnotationInfo AnnotateDiagram()
        {
            throw new NotSupportedException(String.Format(Message, annotationData.type));
        }
        
        protected override AnnotationType GetType()
        {
            return AnnotationType.TextUnderline;
        }
    }
}