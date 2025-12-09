using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PartsOfSpeech
{
    /// <summary>
    /// Query options for the Parts Of Speech API
    /// </summary>
    public class PartsOfSpeechQueryOptions
    {
        /// <summary>
        /// The text to extract words from
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// The part of speech to extract (nouns, verbs, adjectives, adverbs, etc.)
        /// </summary>
        [JsonProperty("partofspeech")]
        public string Partofspeech { get; set; }
    }
}
