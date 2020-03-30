Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81745198542
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 22:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3LTfrC3vd1hqVq4Q3/T4MZxQYkfhCfOMonhhFNL6Rc=; b=RWFokPGoMa2tob
	6pjCPO/IAWrY2tgBsjewga8yP+8DNvwjMp7HpgxSayUCuCrAblWapwYeV0RephwNeFib2TH9hJPF/
	s7biYMWh32qDfxrJbPNWZZpVjm02PGiSy8F9aGsvSuLe9ujMsDsYnGiB/S3Qhgf/NxYTv/yND4lYO
	/pK0zWcQwbLnPw/H5XejwoOrsZRKnhDVDehXLCWAUC4W6l4MKhXpithKVZ/R4P10/6NIAyNpTTQgj
	VPSIxyydIX3LW5CKTFZARbq6tBnUUjRDJbY2/gq6EnEI+jX5t6mczo9WoqT53dOnG5p1gWk+7HniM
	XvLf11uGcCrjaJWJCw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0qS-00089s-Bf; Mon, 30 Mar 2020 20:17:16 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0qP-00088l-CA
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 20:17:14 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jJ0pz-0001xk-8G; Mon, 30 Mar 2020 14:16:47 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jJ0py-0005pf-Ai; Mon, 30 Mar 2020 14:16:47 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Kairui Song <kasong@redhat.com>
References: <20200330181544.1595733-1-kasong@redhat.com>
Date: Mon, 30 Mar 2020 15:14:06 -0500
In-Reply-To: <20200330181544.1595733-1-kasong@redhat.com> (Kairui Song's
 message of "Tue, 31 Mar 2020 02:15:44 +0800")
Message-ID: <87369py50x.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jJ0py-0005pf-Ai; ; ; mid=<87369py50x.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18POivBtpLy4qX5Ci7Y3ZVo2RKkhoDPLpY=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,LotsOfNums_01,T_TM2_M_HEADER_IN_MSG
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000]
 *  1.2 LotsOfNums_01 BODY: Lots of long strings of numbers
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;Kairui Song <kasong@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 497 ms - load_scoreonly_sql: 0.07 (0.0%),
 signal_user_changed: 11 (2.2%), b_tie_ro: 10 (1.9%), parse: 1.10
 (0.2%), extract_message_metadata: 13 (2.6%), get_uri_detail_list: 2.5
 (0.5%), tests_pri_-1000: 13 (2.7%), tests_pri_-950: 1.29 (0.3%),
 tests_pri_-900: 1.02 (0.2%), tests_pri_-90: 90 (18.2%), check_bayes:
 89 (17.9%), b_tokenize: 8 (1.6%), b_tok_get_all: 25 (5.1%),
 b_comp_prob: 2.3 (0.5%), b_tok_touch_all: 50 (10.0%), b_finish: 0.95
 (0.2%), tests_pri_0: 324 (65.3%), check_dkim_signature: 0.51 (0.1%),
 check_dkim_adsp: 2.5 (0.5%), poll_dns_idle: 0.79 (0.2%), tests_pri_10:
 4.1 (0.8%), tests_pri_500: 34 (6.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] crash_dump: remove saved_max_pfn
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_131713_416786_03700647 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Kairui Song <kasong@redhat.com> writes:

> This variable is no longer used.
>
> saved_max_pfn was originally introduce in commit 92aa63a5a1bf ("[PATCH]
> kdump: Retrieve saved max pfn"), used to make sure that user does not
> try to read the physical memory beyond saved_max_pfn. But since
> commit 921d58c0e699 ("vmcore: remove saved_max_pfn check")
> it's no longer used for the check.
>
> Only user left is Calary IOMMU, which start using it from
> commit 95b68dec0d52 ("calgary iommu: use the first kernels TCE tables
> in kdump"). But again, recently in commit 90dc392fc445 ("x86: Remove
> the calgary IOMMU driver"), Calary IOMMU is removed and this variable
> no longer have any user.
>
> So just remove it.
>
> Signed-off-by: Kairui Song <kasong@redhat.com>

Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>

Can we merge this through the tip tree?


> ---
>  arch/x86/kernel/e820.c     | 8 --------
>  include/linux/crash_dump.h | 2 --
>  kernel/crash_dump.c        | 6 ------
>  3 files changed, 16 deletions(-)
>
> diff --git a/arch/x86/kernel/e820.c b/arch/x86/kernel/e820.c
> index c5399e80c59c..4d13c57f370a 100644
> --- a/arch/x86/kernel/e820.c
> +++ b/arch/x86/kernel/e820.c
> @@ -910,14 +910,6 @@ static int __init parse_memmap_one(char *p)
>  		return -EINVAL;
>  
>  	if (!strncmp(p, "exactmap", 8)) {
> -#ifdef CONFIG_CRASH_DUMP
> -		/*
> -		 * If we are doing a crash dump, we still need to know
> -		 * the real memory size before the original memory map is
> -		 * reset.
> -		 */
> -		saved_max_pfn = e820__end_of_ram_pfn();
> -#endif
>  		e820_table->nr_entries = 0;
>  		userdef = 1;
>  		return 0;
> diff --git a/include/linux/crash_dump.h b/include/linux/crash_dump.h
> index 4664fc1871de..bc156285d097 100644
> --- a/include/linux/crash_dump.h
> +++ b/include/linux/crash_dump.h
> @@ -97,8 +97,6 @@ extern void unregister_oldmem_pfn_is_ram(void);
>  static inline bool is_kdump_kernel(void) { return 0; }
>  #endif /* CONFIG_CRASH_DUMP */
>  
> -extern unsigned long saved_max_pfn;
> -
>  /* Device Dump information to be filled by drivers */
>  struct vmcoredd_data {
>  	char dump_name[VMCOREDD_MAX_NAME_BYTES]; /* Unique name of the dump */
> diff --git a/kernel/crash_dump.c b/kernel/crash_dump.c
> index 9c23ae074b40..92da32275af5 100644
> --- a/kernel/crash_dump.c
> +++ b/kernel/crash_dump.c
> @@ -5,12 +5,6 @@
>  #include <linux/errno.h>
>  #include <linux/export.h>
>  
> -/*
> - * If we have booted due to a crash, max_pfn will be a very low value. We need
> - * to know the amount of memory that the previous kernel used.
> - */
> -unsigned long saved_max_pfn;
> -
>  /*
>   * stores the physical address of elf header of crash image
>   *

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
