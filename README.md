# English-Vietnamese Parallel Corpora
This repository contains English-Vietnamese parallel corpora collected from publicly available sources/projects for the VLSP 2020
English-Vietnamese News Translation Shared Task. It includes:

* `basic`: parallel corpus from basic sentences, crawled from english-vietnamese websites and from [Tatoeba corpus](http://opus.nlpl.eu/Tatoeba.php)
* `EVBcorpus`: parallel corpus of law and news texts, compiled by Dr. Quoc Hung Ngo. Source: [EVBcorpus](https://github.com/qhungngo/EVBCorpus).
* `wiki-alt`: multilingual wiki text from [Asian Language Treebank](http://www2.nict.go.jp/astrec-att/member/mutiyama/ALT/) project.
* `ted-like`: one-speaker talks similar to [TED talks](https://www.ted.com/), extracted from many multilingual sites, including TED, Khan Academy, Amara... 
* `openSub`: parallel corpus of movie subtitles, extracted from the (https://www.opensubtitles.org/) website by  [OPUS project](https://opus.nlpl.eu/OpenSubtitles.php)
*  `indomain-news`: parallel corpus of news domains, extracted and sentence-aligned from various newspapers. Besides, there are development and test sets in the same domain (news) which are used for the VLSP 2020 evaluation campaign.
*  `iwslt15`: parallel corpus extracted from TED talks, served for the [IWSLT15 evaluation campaign](https://workshop2015.iwslt.org/). It also includes development, test and official test sets used for the IWSLT15 evaluation campaign. NOTE: `ted-like` corpus contains all the data in this `iwslt15` corpus, including development and test sets. So, the systems trained on data containing `ted-like` might overfit and perform unfairly on IWSLT15 English-Vietnamese benchmarks (e.g. [paperwithcode](https://paperswithcode.com/sota/machine-translation-on-iwslt2015-english-1))
*  `mono-vi`: a monolingual corpus extracted and filtered from Vietnamese popular newspapers. It should be used for Back-Translation approaches.


Here are the statistics of those data:

| Dataset           | Number of sentences | Notes                                   |
|-------------------|---------------------|-----------------------------------------|
| basic             | 8,818               | basic, conversational sentences         |
| EVBcorpus         | 45,308              | law and news texts                      |
| wiki-alt          | 20,000              | wiki texts                              |
| ted-like          | 546,190             | one-speaker talks, educational domain   |
| openSub           | 3,505,276           | movie subtitles, noisy                  |
| indomain-news     | 20,000              | news, in-domain data for VLSP 2020      |
| iwslt15           | 133,137             | ted talks, fully overlapped to ted-like |
| mono-vi           | 2,000,000           | monolingual corpus of news domain       |
| **Total**         | 4,145,592           | excluding iwslt15 and mono-vi           |
| **Total Good**    | 640,316             | excluding iwslt15, mono-vi and openSub  |

At the end of the VLSP 2020 evaluation campaign, the task organizers published the official test set `VLSP20-official`. Here are the statistics of those validations and test sets:

| Evaluation Campaign        | Dataset                  | Number of sentences | Notes                                   |
|----------------------------|--------------------------|---------------------|-----------------------------------------|
|                            | dev                      | 7,462               | TED talks, development/validation set   |
| IWSLT15 (ilwslt15)         | test                     | 6,322               | TED talks, public test set              |
|                            | IWSLT15.official_testdev | 500                 | TED talks, private/official test set    |
| VLSP2020 (indomain-news)   | dev                      | 1,007               | news domain, development/validation set |
|                            | tst                      | 1,220               | news domain, public test set            |
| VLSP2020 (VLSP20-official) | offi_test                | 789                 | news domain, private/official test set  |


Among those corpora, the `openSub` corpus is the largest but the most noisy one. We trained a strong NMT system on `Total` data (including `openSub`) and the same sytem on `Total Good` (without `openSub`) and the latter outperforms the former on VLSP 2020 test sets.

Please cite [our paper](https://www.aclweb.org/anthology/2020.vlsp-1.18.pdf) if you use the data in your research:

    @inproceedings{vlsp2020-mt,
    title     = {{Goals, Challenges and Findings of the VLSP 2020 English-Vietnamese News Translation Shared Task}},
    author    = {Thanh-Le Ha and Van-Khanh Tran and Kim-Anh Nguyen},
    booktitle = {{Proceedings of the 7th International Workshop on Vietnamese Language and Speech Processing - VLSP 2020}},
    year      = {2020}
    }


## Acknowledgment 

*  **TED and WIT3**: https://wit3.fbk.eu/. M. Cettolo, C. Girardi, and M. Federico. 2012. "WIT3: Web Inventory of Transcribed and Translated Talks". In Proc. of EAMT, pp. 261-268, Trento, Italy.
*  **WIKI-ALT**: Asian Language Treebank project. Hammam Riza, Michael Purwoadi, Gunarso, Teduh Uliniansyah, Aw Ai Ti, Sharifah Mahani Aljunied, Luong Chi Mai, Vu Tat Thang, Nguyen Phuong Thai, Vichet Chea, Rapid Sun, Sethserey Sam, Sopheap Seng, Khin Mar Soe, Khin Thandar Nwet, Masao Utiyama, Chenchen Ding. 2016. "Introduction of the Asian Language Treebank". Oriental COCOSDA.
*  **Tatoeba** : J. Tiedemann. 2012. "Parallel Data, Tools and Interfaces in OPUS". In Proceedings of the 8th International Conference on Language Resources and Evaluation (LREC 2012).
*  **QED**: A. Abdelali, F. Guzman, H. Sajjad and S. Vogel. 2014 "The AMARA Corpus: Building parallel language resources for the educational domain". The Proceedings of the 9th International Conference on Language Resources and Evaluation (LREC'14). Reykjavik, Iceland, 2014. Pp. 1856-1862. Isbn. 978-2-9517408-8-4. 
*  **OpenSubtitles**: P. Lison and J. Tiedemann. 2016. "OpenSubtitles2016: Extracting Large Parallel Corpora from Movie and TV Subtitles". In Proceedings of the 10th International Conference on Language Resources and Evaluation (LREC 2016)
*  **VINBDI**: [VinGroup Big Data Institute](https://vinbigdata.org/en/) for the data collection and official test translation fundings.
