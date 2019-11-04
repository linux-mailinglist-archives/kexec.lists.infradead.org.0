Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6F9EEB10
	for <lists+kexec@lfdr.de>; Mon,  4 Nov 2019 22:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egFKOvusy5mHUKhQMW2ND4nHbXYpvrI3rJGmdtyOkoM=; b=BuBvEZg2k4yk+5
	4yVeb6fmK6pYLymJoMk89rCCLeRVtf2q8/iPfkV/bJwoZCMAuGiXRyMp/wOAnWiR6X3rnXRJH8kRP
	w4PGQfcvc1l1PORfAc1fbR80uoHSBBfcUj1z6uHWshYNbrXao76UKqngxcsnYmFj06lRwclxLNNzx
	9v1CrRnEfSRyXtE+UCNewrj75eRc5UlAA+E5MghdJhNVty3iuf2IJ6Y5zkEYEM7/QfsxGcxzzP6fm
	seLtL0l925F/ke9/HSRb/T0bVc115pFREj3nXqtbGgf2qjWAvlNsN1T1GqCpHdJrFbOWR++BNRFb2
	bcVNQOzSuzv+XtVotRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjrP-00035d-52; Mon, 04 Nov 2019 21:26:03 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjrK-00034K-Vq
 for kexec@lists.infradead.org; Mon, 04 Nov 2019 21:26:01 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA4LPje5025760
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 5 Nov 2019 06:25:45 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA4LPi3E010530;
 Tue, 5 Nov 2019 06:25:45 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA4LPifL029468; 
 Tue, 5 Nov 2019 06:25:44 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-10048153;
 Tue, 5 Nov 2019 06:24:38 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Tue, 5
 Nov 2019 06:24:37 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Mikhail Zaslonko <zaslonko@linux.ibm.com>
Subject: RE: [PATCH] makedumpfile: Fix off-by-one issue in
 exclude_nodata_pages()
Thread-Topic: [PATCH] makedumpfile: Fix off-by-one issue in
 exclude_nodata_pages()
Thread-Index: AQHVkxCU/OdkVmf2uUKkQbVo21uQs6d7hOoQ
Date: Mon, 4 Nov 2019 21:24:36 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035945E5@BPXM09GP.gisp.nec.co.jp>
References: <20191104130515.26741-1-zaslonko@linux.ibm.com>
In-Reply-To: <20191104130515.26741-1-zaslonko@linux.ibm.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.153]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_132559_278240_99BE37C2 
X-CRM114-Status: GOOD (  17.11  )
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
Cc: "prudo@linux.ibm.com" <prudo@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Mikhail,

> -----Original Message-----
> When building a dump bitmap (2nd bitmap) for the ELF dump, the last pfn
> of the cycle is always ignored in exclude_nodata_pages() function due to
> off-by-one error on cycle boundary check. Thus, the respective bit of
> the bitmap is never cleared.
> That can lead to the error when such a pfn should not be dumpable (e.g.
> the last pfn of the ELF-load of zero filesize). Based on the bit in the
> bitmap the page is treated as dumpable in write_elf_pages_cyclic() function
> and the follow on error is triggered in write_elf_load_segment() function
> due to the failing sanity check of paddr_to_offset2():

Good catch.  I could reproduce this issue with a vmcore on hand and
confirm that the patch fixed it.  Looks good to me, applied.

Thanks,
Kazu

> 
>    $ makedumpfile -E dump.elf dump.elf.E
>    Checking for memory holes                         : [100.0 %] |
>    write_elf_load_segment: Can't convert physaddr(7ffff000) to an offset.
>    makedumpfile Failed.
> 
> Signed-off-by: Mikhail Zaslonko <zaslonko@linux.ibm.com>
> ---
>  makedumpfile.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index de0973f..4a00011 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -4740,7 +4740,7 @@ exclude_nodata_pages(struct cycle *cycle)
>  		if (pfn < cycle->start_pfn)
>  			pfn = cycle->start_pfn;
>  		if (pfn_end >= cycle->end_pfn)
> -			pfn_end = cycle->end_pfn - 1;
> +			pfn_end = cycle->end_pfn;
>  		while (pfn < pfn_end) {
>  			clear_bit_on_2nd_bitmap(pfn, cycle);
>  			++pfn;
> --
> 2.17.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
