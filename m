Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13003BF979
	for <lists+kexec@lfdr.de>; Thu, 26 Sep 2019 20:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xb8ubnucSn2EwcBVfTFuJigfRjBfKDtXf058d+ZXk/0=; b=L1/FYL4BLH2Rod
	zq2xLMx1weVb8YhS/P3Z9DQeU1cIM8D0Q2aPaok80Bs8UiI1ORfMTtEUj4yV5KatwWSZ3FHJONlVB
	Dteomfa2jwxPmVrl5uOuJzA5KXVlSVOH5QOx2ImD5pPpERZaoZhlKsHy8gVEPWHqluCjDsgISFNOr
	v3YHC1tnFaprD9wtbh7hjcSiuEtMI1tF+MPj99SG9ttKvrqDs28uFMW2T+vyIRgSzhMd13taGennm
	Mh1e4csFr6WTNZ2DrEZNJv0Z8SrXqgXEXnTAOyBqclmI++06sBSN+tCkvisw81mgMNILBxRWlgnQF
	eFzPeB5gR2JTpwcRFgng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDYkM-00048Y-9A; Thu, 26 Sep 2019 18:44:10 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDYkH-00048A-Ov
 for kexec@lists.infradead.org; Thu, 26 Sep 2019 18:44:07 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x8QIhvoB001013
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 27 Sep 2019 03:43:57 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x8QIhu51024554;
 Fri, 27 Sep 2019 03:43:56 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x8QIhu2G019911;
 Fri, 27 Sep 2019 03:43:56 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.138] [10.38.151.138]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-1452712;
 Fri, 27 Sep 2019 03:41:49 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC10GP.gisp.nec.co.jp ([10.38.151.138]) with mapi id 14.03.0439.000; Fri,
 27 Sep 2019 03:41:48 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: Fix divide by zero in print_report()
Thread-Topic: makedumpfile: Fix divide by zero in print_report()
Thread-Index: AQHVcw/g+V5I957X20SkpJOpVNgNBac8j8Fg
Date: Thu, 26 Sep 2019 18:41:48 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC0359079B@BPXM09GP.gisp.nec.co.jp>
References: <20190924194005.GA7666@codemonkey.org.uk>
In-Reply-To: <20190924194005.GA7666@codemonkey.org.uk>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.164]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_114406_032114_8C5AF7FD 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dave,

> -----Original Message-----
> If info->max_mapnr and pfn_memhole are equal, we divide by zero when
> trying determine the 'shrinking' value.
> 
> On the system I saw this error, we arrived at this function with
> info->max_mapnr:0x0000000001080000 pfn_memhole:0x0000000001080000

Thank you for the patch.
I suppose that you see the error with the -E option, right?

It seems that the -E option has some problems with its statistics,
so I'm checking whether there is a better way to fix this.

Thanks,
Kazu

> 
> Change the code to only print out the shrinking value if it makes sense.
> 
> Signed-off-by: Dave Jones <davej@codemonkey.org.uk>
> 
> diff -wbBdu -urN makedumpfile-1.6.6/makedumpfile.c src/makedumpfile-code/makedumpfile.c
> --- makedumpfile-1.6.6/makedumpfile.c	2019-06-27 08:42:40.000000000 -0400
> +++ makedumpfile-code/makedumpfile.c	2019-09-24 15:28:06.456549495 -0400
> @@ -9778,8 +9778,6 @@
> 
>  	pfn_excluded = pfn_zero + pfn_cache + pfn_cache_private
>  	    + pfn_user + pfn_free + pfn_hwpoison + pfn_offline;
> -	shrinking = (pfn_original - pfn_excluded) * 100;
> -	shrinking = shrinking / pfn_original;
> 
>  	REPORT_MSG("\n");
>  	REPORT_MSG("Original pages  : 0x%016llx\n", pfn_original);
> @@ -9794,8 +9792,13 @@
>  	REPORT_MSG("    Offline pages           : 0x%016llx\n", pfn_offline);
>  	REPORT_MSG("  Remaining pages  : 0x%016llx\n",
>  	    pfn_original - pfn_excluded);
> -	REPORT_MSG("  (The number of pages is reduced to %lld%%.)\n",
> -	    shrinking);
> +
> +	if (pfn_original != 0) {
> +		shrinking = (pfn_original - pfn_excluded) * 100;
> +		shrinking = shrinking / pfn_original;
> +		REPORT_MSG("  (The number of pages is reduced to %lld%%.)\n",
> +		    shrinking);
> +	}
>  	REPORT_MSG("Memory Hole     : 0x%016llx\n", pfn_memhole);
>  	REPORT_MSG("--------------------------------------------------\n");
>  	REPORT_MSG("Total pages     : 0x%016llx\n", info->max_mapnr);



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
