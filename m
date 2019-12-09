Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AA5117711
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 21:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WErgzMk6abNrl4qTekQnf3LLYHOXnodnq1Q0OG/0BUw=; b=JYWYB82KV/XTXw
	88ik3nQBCRfHHd9Lqpc/FF1k2qUs88xZ+C9+6JkSvYzcQCdCh6DJwday4zcyD9PNxcicexoQnwCfl
	jw1R9v35dJHRSDGYkH1+9oQxfETieCDruQ8u0lpkCHETJZb6gJjdOyoKXQD1Ug9dMuZQCshrqsYhx
	iutkNNlgDysZjtgDtsjUAvNxuckiQ0naYKMn+v4oKeCbuLJcZdkhT7nob5Mn/lBHtJI9XpB8OJGz0
	KkIN4Q9YkBWXfqS8wSH3S15ebY2jIeyWqPt1uyZy4VToPkLBQADc0DFf2nBNlCf0IwoeDnU5u7KgU
	3bI9JUXvzmclS5FSyJ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePNo-0000as-0m; Mon, 09 Dec 2019 20:11:52 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePNk-0000ZZ-1B
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 20:11:49 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB9KBe1w008964
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 10 Dec 2019 05:11:40 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB9KBe2q015074;
 Tue, 10 Dec 2019 05:11:40 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB9KBPiZ012750; 
 Tue, 10 Dec 2019 05:11:40 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.139] [10.38.151.139]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-11082798;
 Tue, 10 Dec 2019 05:10:25 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC11GP.gisp.nec.co.jp ([10.38.151.139]) with mapi id 14.03.0439.000; Tue,
 10 Dec 2019 05:10:24 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: piliu <piliu@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Thread-Topic: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Thread-Index: AQHVqax/wdTLCYKVa02W9vBLyeR8caeqiAKAgAY7MwCAAVkGcA==
Date: Mon, 9 Dec 2019 20:10:24 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03597A16@BPXM09GP.gisp.nec.co.jp>
References: <1575358627-17152-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
 <0d793e2d-6698-6543-13de-a3de8732df75@redhat.com>
In-Reply-To: <0d793e2d-6698-6543-13de-a3de8732df75@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.241]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_121148_313658_0BEF8F69 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


> -----Original Message-----
> From: piliu <piliu@redhat.com>
> Sent: Monday, December 9, 2019 1:06 AM
> To: Hagio Kazuhito(萩尾 一仁) <k-hagio@ab.jp.nec.com>; kexec@lists.infradead.org
> Subject: Re: [PATCH] makedumpfile: assign bitmap2 fd for sub process during refiltering
> 
> 
> 
> On 12/07/2019 06:11 AM, Kazuhito Hagio wrote:
> > Hi Pingfan,
> >
> >> -----Original Message-----
> >> In refiltering mode, each sub process inherits bitmap2->fd from parent.
> >> Then they lseek()/read() on the same fd, which means that they interference
> >> with each other.
> >>
> >> This breaks the purpose of SPLITTING_FD_BITMAP(i) for each sub process.
> >> Fix it by assigning a sub process dedicated fd to bitmap2->fd.
> >>
> >> Signed-off-by: Pingfan Liu <piliu@redhat.com>
> >
> > Thanks for the patch.
> > I'm still reading the code, but it might be better to apply this to bitmap1->fd
> > as well?  see you next week..
> Yes. Although during my test, bitmap1 is not touched, but it is a
> reasonable step to against any future bug.

Reading the code, I think
- the issue might occur not only in refiltering, but also the first filtering
  with --split and --work-dir option (forced non-cyclic mode).
- pefer to gather things for --split option into writeout_multiple_dumpfiles()
  if we can, for readability.

So does the following patch work for you and your test?
I could not have reproduced the issue yet.

diff --git a/makedumpfile.c b/makedumpfile.c
index b9e9dfbd45ba..674c6a00e2dd 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -10091,6 +10091,10 @@ writeout_multiple_dumpfiles(void)
 			info->split_start_pfn = SPLITTING_START_PFN(i);
 			info->split_end_pfn   = SPLITTING_END_PFN(i);
 
+			if (!info->flag_cyclic) {
+				info->bitmap1->fd = info->fd_bitmap;
+				info->bitmap2->fd = info->fd_bitmap;
+			}
 			if (!reopen_dump_memory())
 				exit(1);
 			if ((status = writeout_dumpfile()) == FALSE)


BTW, what do you see when the issue occurs? an error or broken dump?

Thanks,
Kazu

> 
> Thanks,
> Pingfan
> >
> > Thanks,
> > Kazu
> >
> >> ---
> >>  makedumpfile.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/makedumpfile.c b/makedumpfile.c
> >> index d76a435..1dc8640 100644
> >> --- a/makedumpfile.c
> >> +++ b/makedumpfile.c
> >> @@ -8857,7 +8857,8 @@ write_kdump_pages_and_bitmap_cyclic(struct cache_data *cd_header, struct cache_d
> >>  	if (info->flag_cyclic) {
> >>  		if (!prepare_bitmap2_buffer())
> >>  			return FALSE;
> >> -	}
> >> +	} else if (info->flag_refiltering)
> >> +		info->bitmap2->fd = info->fd_bitmap;
> >>
> >>  	/*
> >>  	 * Write pages and bitmap cyclically.
> >> --
> >> 2.7.5
> >>
> >
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec
> >
> 



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
