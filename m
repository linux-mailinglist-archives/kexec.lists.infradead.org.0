Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09CCF9D9A
	for <lists+kexec@lfdr.de>; Wed, 13 Nov 2019 00:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGaSr3U7vNXHrmpD2Nvy+Onz0j8LkRL/5HJMDpmOFuU=; b=NevEBWGWFZw/YB
	njrp0q99MTe5CrjtXHoEkUAB4SmeCKKKdQkZsWKyZ/KymkX3ajZJoeONEqj2JILc75BlZQcSgc+Fi
	OoGYw3T6wbCzETACZFAuF1sT7Y5LFUHQDSpwv3mpt3Vxqa94HCvvxCR2QHIsgGEHxgwzw2pi3oz1h
	x+6Og1SObMlKH7paE6q1oJp/a/HPImuOrWLeHor262E00emXW+C0b8Zde0YYJMNMaBS4zEfy7rlp7
	51LtuY/fJIMMNmNmyNp55B9UODT0528k779Mdx0aBUmTa0eFwkGNqu8SkzNl3b+fZ/u2ZXzBUe9eJ
	C3U/UYiPgIT6qA5FEFsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUf9H-0005sX-Qa; Tue, 12 Nov 2019 23:00:35 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUf9E-0005rN-Ik
 for kexec@lists.infradead.org; Tue, 12 Nov 2019 23:00:34 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xACN0OvY013289
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <kexec@lists.infradead.org>; Wed, 13 Nov 2019 08:00:24 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xACN0O6a020257
 for <kexec@lists.infradead.org>; Wed, 13 Nov 2019 08:00:24 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xACN0OZn021384
 for <kexec@lists.infradead.org>; Wed, 13 Nov 2019 08:00:24 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-693208;
 Wed, 13 Nov 2019 07:58:31 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Wed,
 13 Nov 2019 07:58:30 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [PATCH] makedumpfile: Fix wrong statistics in ELF format mode
Thread-Topic: [PATCH] makedumpfile: Fix wrong statistics in ELF format mode
Thread-Index: AdWUwlnZCBezwlDzQh69B+2ZAG8Z0wE2q8Vw
Date: Tue, 12 Nov 2019 22:58:30 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594E4D@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03594800@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03594800@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.88]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_150032_832138_96561397 
X-CRM114-Status: GOOD (  25.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> The -E option, which creates a dumpfile in ELF format, reports wrong
> statistics like the ones below, because:
>  (1) counts excluded pages repeatedly due to overlapped cycles
>  (2) does not calculate the number of memory hole pages in cyclic mode
>  (3) does not take account of the number of pages excluded actually
>      in ELF format, which excludes only contiguous 256 or more pages
>      that can be excluded.
> 
>   Original pages  : 0x0000000000000000
>     Excluded pages   : 0x00000000007daf05
>       Pages filled with zero  : 0x0000000000002dcc
>       Non-private cache pages : 0x00000000000471d6
>       Private cache pages     : 0x0000000000000001
>       User process data pages : 0x00000000000147f1
>       Free pages              : 0x000000000077c771
>       Hwpoison pages          : 0x0000000000000000
>       Offline pages           : 0x0000000000000000
>     Remaining pages  : 0xffffffffff8250fb
>   Memory Hole     : 0x0000000000440000
>   --------------------------------------------------
>   Total pages     : 0x0000000000440000
> 
> In order to fix this issue:
>  (1) start the first cycle from the start pfn of a segment to avoid
>      overlaps between cycles

finally I found a fault with this change.
Will merge the following patch into the original one.

diff --git a/makedumpfile.c b/makedumpfile.c
index 9569251ce0c7..ac19ed858416 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -56,8 +56,13 @@ static void first_cycle(mdf_pfn_t start, mdf_pfn_t max, struct cycle *cycle)
 	if (cycle->end_pfn > max)
 		cycle->end_pfn = max;
 
+	/*
+	 * Mitigate statistics problem in ELF dump mode.
+	 * A cycle must start with a pfn that is divisible by BITPERBYTE.
+	 * See create_bitmap_from_memhole().
+	 */
 	if (info->flag_elf_dumpfile && cycle->start_pfn < start)
-		cycle->start_pfn = start;
+		cycle->start_pfn = round(start, BITPERBYTE);
 
 	cycle->exclude_pfn_start = 0;
 	cycle->exclude_pfn_end = 0;
@@ -7503,7 +7508,7 @@ get_loads_dumpfile_cyclic(void)
 				if (!create_2nd_bitmap(&cycle))
 					return FALSE;
 			}
-			for (pfn = cycle.start_pfn; pfn < cycle.end_pfn; pfn++) {
+			for (pfn = MAX(pfn_start, cycle.start_pfn); pfn < cycle.end_pfn; pfn++) {
 				if (!is_dumpable(info->bitmap2, pfn, &cycle)) {
 					num_excluded++;
 					continue;
@@ -7598,7 +7603,7 @@ write_elf_pages_cyclic(struct cache_data *cd_header, struct cache_data *cd_page)
 					return FALSE;
 			}
 
-			for (pfn = cycle.start_pfn; pfn < cycle.end_pfn; pfn++) {
+			for (pfn = MAX(pfn_start, cycle.start_pfn); pfn < cycle.end_pfn; pfn++) {
 				if (info->flag_cyclic)
 					pfn_memhole--;


Thanks,
Kazu

>  (2) calculate the number of memory hole pages in cyclic mode
>  (3) introduce pfn_elf_excluded variable to store the actual number
>      of the excluded pages in ELF format
> 
> With the patch, a report message in ELF format mode becomes like this:
> 
>   Original pages  : 0x00000000003f1538
>     Excluded pages   : 0x00000000003c8c9d
>        in ELF format : 0x00000000003c4319
>       Pages filled with zero  : 0x00000000000026d8
>       Non-private cache pages : 0x0000000000047032
>       Private cache pages     : 0x0000000000000001
>       User process data pages : 0x0000000000014794
>       Free pages              : 0x000000000036adfe
>       Hwpoison pages          : 0x0000000000000000
>       Offline pages           : 0x0000000000000000
>     Remaining pages  : 0x000000000002889b
>        in ELF format : 0x000000000002d21f
>     (The number of pages is reduced to 4%.)
>   Memory Hole     : 0x000000000004eac8
>   --------------------------------------------------
>   Total pages     : 0x0000000000440000
> 
> where the "Excluded pages" and "Remaining pages" do not mean the
> actual numbers of excluded and remaining pages.  But remain the
> same for some reference.
> 
> Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> ---
>  makedumpfile.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index 4a000112ba59..9569251ce0c7 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -56,6 +56,9 @@ static void first_cycle(mdf_pfn_t start, mdf_pfn_t max, struct cycle *cycle)
>  	if (cycle->end_pfn > max)
>  		cycle->end_pfn = max;
> 
> +	if (info->flag_elf_dumpfile && cycle->start_pfn < start)
> +		cycle->start_pfn = start;
> +
>  	cycle->exclude_pfn_start = 0;
>  	cycle->exclude_pfn_end = 0;
>  }
> @@ -89,6 +92,7 @@ mdf_pfn_t pfn_user;
>  mdf_pfn_t pfn_free;
>  mdf_pfn_t pfn_hwpoison;
>  mdf_pfn_t pfn_offline;
> +mdf_pfn_t pfn_elf_excluded;
> 
>  mdf_pfn_t num_dumped;
> 
> @@ -7499,7 +7503,7 @@ get_loads_dumpfile_cyclic(void)
>  				if (!create_2nd_bitmap(&cycle))
>  					return FALSE;
>  			}
> -			for (pfn = MAX(pfn_start, cycle.start_pfn); pfn < cycle.end_pfn; pfn++) {
> +			for (pfn = cycle.start_pfn; pfn < cycle.end_pfn; pfn++) {
>  				if (!is_dumpable(info->bitmap2, pfn, &cycle)) {
>  					num_excluded++;
>  					continue;
> @@ -7594,7 +7598,10 @@ write_elf_pages_cyclic(struct cache_data *cd_header, struct cache_data *cd_page)
>  					return FALSE;
>  			}
> 
> -			for (pfn = MAX(pfn_start, cycle.start_pfn); pfn < cycle.end_pfn; pfn++) {
> +			for (pfn = cycle.start_pfn; pfn < cycle.end_pfn; pfn++) {
> +				if (info->flag_cyclic)
> +					pfn_memhole--;
> +
>  				if (!is_dumpable(info->bitmap2, pfn, &cycle)) {
>  					num_excluded++;
>  					if ((pfn == pfn_end - 1) && frac_tail)
> @@ -7639,6 +7646,9 @@ write_elf_pages_cyclic(struct cache_data *cd_header, struct cache_data *cd_page)
>  					continue;
>  				}
> 
> +				/* The number of pages excluded actually in ELF format */
> +				pfn_elf_excluded += num_excluded;
> +
>  				/*
>  				 * If the number of the contiguous pages to be excluded
>  				 * is 256 or more, those pages are excluded really.
> @@ -7691,6 +7701,9 @@ write_elf_pages_cyclic(struct cache_data *cd_header, struct cache_data *cd_page)
>  			}
>  		}
> 
> +		/* The number of pages excluded actually in ELF format */
> +		pfn_elf_excluded += num_excluded;
> +
>  		/*
>  		 * Write the last PT_LOAD.
>  		 */
> @@ -9777,6 +9790,9 @@ print_report(void)
>  	REPORT_MSG("\n");
>  	REPORT_MSG("Original pages  : 0x%016llx\n", pfn_original);
>  	REPORT_MSG("  Excluded pages   : 0x%016llx\n", pfn_excluded);
> +	if (info->flag_elf_dumpfile)
> +		REPORT_MSG("     in ELF format : 0x%016llx\n",
> +			pfn_elf_excluded);
>  	REPORT_MSG("    Pages filled with zero  : 0x%016llx\n", pfn_zero);
>  	REPORT_MSG("    Non-private cache pages : 0x%016llx\n", pfn_cache);
>  	REPORT_MSG("    Private cache pages     : 0x%016llx\n",
> @@ -9788,6 +9804,13 @@ print_report(void)
>  	REPORT_MSG("  Remaining pages  : 0x%016llx\n",
>  	    pfn_original - pfn_excluded);
> 
> +	if (info->flag_elf_dumpfile) {
> +		REPORT_MSG("     in ELF format : 0x%016llx\n",
> +			pfn_original - pfn_elf_excluded);
> +
> +		pfn_excluded = pfn_elf_excluded;
> +	}
> +
>  	if (pfn_original != 0) {
>  		shrinking = (pfn_original - pfn_excluded) * 100;
>  		shrinking = shrinking / pfn_original;
> --
> 2.18.1
> 
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
