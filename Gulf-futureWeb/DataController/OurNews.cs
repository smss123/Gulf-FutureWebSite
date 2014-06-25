namespace DataController
{
    using System;
    using System.Collections.Generic;

    public partial class OurNews
    {
        public int Id { get; set; }
        public string DateOf { get; set; }
        public string ArCaption { get; set; }
        public string ArSummary { get; set; }
        public string ArDetails { get; set; }
        public string Photo { get; set; }
        public string EnCaption { get; set; }
        public string EnSummary { get; set; }
        public string EnDetails { get; set; }
    }
}
