Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D392611BA91
	for <lists+kexec@lfdr.de>; Wed, 11 Dec 2019 18:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsB68RjhBlUBbI0216oPH+DobENbCT6n855a2lXKED0=; b=AKejgfaOZFlCwq
	wlSBBd8YKsbVLF68oUbtGf+JaV/Y8MNFYJqLVi0G0nrQ0mNV23XCaOSCwZ8BCDugY1oH4VpBMozVi
	0OJycgVOnuV1mT4pFD17qQy5FfsX7gFl243Q7XCT/xLVyoeZj0qFkkqK5iho3zuInPBFWcIoeKO6n
	kZO7OMq8pB9XeSYVK6Hpr+7u/eycCiyFY2FKC4a5z3sQhI+W8PxB3871S+9Z3Z4rAdX3gX4aVK+Ww
	76AA+TU0b8TClpF3vMORkb+sGLk6ysm8lxI+Bi4G+oS4lstZXMsjMU2YLMDXcpr+sWsklZL5rNDm4
	w7F0SogHZnsPkUGSZYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if637-0003MD-TK; Wed, 11 Dec 2019 17:45:21 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if631-00035C-36
 for kexec@lists.infradead.org; Wed, 11 Dec 2019 17:45:16 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xBBHj7YD004547
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 12 Dec 2019 02:45:07 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xBBHj7G5010352;
 Thu, 12 Dec 2019 02:45:07 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xBBHj7YL004594;
 Thu, 12 Dec 2019 02:45:07 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-11153607;
 Thu, 12 Dec 2019 02:44:10 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Thu,
 12 Dec 2019 02:44:09 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: piliu <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Thread-Topic: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Thread-Index: AQHVqax/wdTLCYKVa02W9vBLyeR8caeqiAKAgAY7MwCAAVkGcIAB5mSAgAErftA=
Date: Wed, 11 Dec 2019 17:44:09 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03597DC4@BPXM09GP.gisp.nec.co.jp>
References: <1575358627-17152-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
 <0d793e2d-6698-6543-13de-a3de8732df75@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597A16@BPXM09GP.gisp.nec.co.jp>
 <22c89e8b-49ab-0cd2-2e63-9e380ad4ba8a@redhat.com>
In-Reply-To: <22c89e8b-49ab-0cd2-2e63-9e380ad4ba8a@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.159]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_094515_360059_D8E8B9FA 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pingfan,

> -----Original Message-----
> > Reading the code, I think
> > - the issue might occur not only in refiltering, but also the first filtering
> >   with --split and --work-dir option (forced non-cyclic mode).
> > - pefer to gather things for --split option into writeout_multiple_dumpfiles()
> >   if we can, for readability.
> Yes, all of the cases suffer from sharing fd across processes
> >
> > So does the following patch work for you and your test?
> > I could not have reproduced the issue yet.
> I tried to fetch a machine to test. It pass 50 times test with your
> patch. While if without this patch, it failed about 1 out of 4 times.

Good. Thank you for testing.

> > BTW, what do you see when the issue occurs? an error or broken dump?
> The test case is refiltering, "makedumpfile --split  -d 31
> /root/vmcore-p9b-21 dumpfile_{1,2,3} 2>&1"
> And it can not complete the dump.

Ah, I got it. I probably could reproduce the issue:
---
Excluding unnecessary pages                       : [100.0 %] \
readpage_kdump_compressed: pfn(2fc1000) is excluded from vmcore.
readmem: type_addr: 1, addr:2fc1000000, size:4096
read_pfn: Can't get the page data.
...
writeout_multiple_dumpfiles: Child process(30993) finished incompletely.(256)

makedumpfile Failed.
---

Refiltering was the factor that makedumpfile failed, but I think this bug
also can break the dumpfile silently by excluding pages wrongly even in
first filtering.

I guess this bug was hard to debug. Thank you so much for working on this!
Modified your patch and pushed.
https://sourceforge.net/p/makedumpfile/code/ci/5519b3eba68544dc484d85e9540d440d93f8c924/

Thanks,
Kazu




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
