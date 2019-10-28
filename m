Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDE0E74DA
	for <lists+kexec@lfdr.de>; Mon, 28 Oct 2019 16:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYcGZH59RU4yyWD+YZL/xlXuX6C6XzcL0CdiBGq8VdY=; b=ZDzo2aGJRDp9qH
	9y1cG3uRlFLkN+eP9unKcC4FycFkyffTJQ1htTz18kvbM5meD9OGtMRy9Kc7IlDYXJ4pqsF2SK59G
	PzgEddtXlkpAKMdNy+qjseTStcmngKGxRbTTvn4B6Ye8QaK1x6O427JPdcMV64EzoDbkgMI2GpbzQ
	kT0hBmJk3bZF6YvOqS7oVPUgPSGzDVePFE/zU0Y0G+EYTdDkhhDW/g4Z/LU/mVJ7TrRt5hb9f8a4E
	DDrYYjItv3MgdOVQgV+O3qoWqUXc5ORFsMhMypn6SkKc/is3QUtufvyRg6RsH3SlremgVhsQDUkRw
	Ro9i1VQuaZjGGfD1LfiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6nR-00022e-7P; Mon, 28 Oct 2019 15:19:05 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6nM-00021v-Rq
 for kexec@lists.infradead.org; Mon, 28 Oct 2019 15:19:02 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x9SFIqvi013446
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 29 Oct 2019 00:18:52 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9SFIqZb005977;
 Tue, 29 Oct 2019 00:18:52 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9SFIqSp018358; 
 Tue, 29 Oct 2019 00:18:52 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.139] [10.38.151.139]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-264483;
 Tue, 29 Oct 2019 00:18:02 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC11GP.gisp.nec.co.jp ([10.38.151.139]) with mapi id 14.03.0439.000; Tue,
 29 Oct 2019 00:18:01 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Topic: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Index: AdV+3GkEfQ9Ykbz/Q9OI6ddAj4Visv//hDSA/+Z3b+A=
Date: Mon, 28 Oct 2019 15:18:00 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03593DA7@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
 <20191009213855.GA14574@codemonkey.org.uk>
In-Reply-To: <20191009213855.GA14574@codemonkey.org.uk>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.48]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_081901_139966_173927BD 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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

> -----Original Message-----
>  > > There are some other failure cases with non-null data, so maybe there's >1 bug here.
>  > > I've not seen an obvious pattern to this. eg...
>  > >
>  > > https://pastebin.com/2uM4sBCF
>  > >
>  >
>  > As for this case, I suspect that Elf64_Ehdr.e_phnum overflows
>  > (i.e. num_loads_dumpfile > 65535):
> 
> Oh, good catch.  These are 256GB machines, so after discarding
> everything, that explains why we end up with so many sections.
> This also explains why it sometimes works I think, when the discarding
> manages to get the total nr headers <64k.

I think this will be the one of the causes, and had a look at how
we can fix it.  If you get a vmcore where this pattern occurs,
you can try this tree:
https://github.com/k-hagio/makedumpfile/tree/support-extended-elf

Then, the crash utility also needs a patch to support a dumpfile
that has more than 64k program headers:
https://github.com/k-hagio/crash/tree/support-extended-elf

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
