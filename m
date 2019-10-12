Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCF1D4F48
	for <lists+kexec@lfdr.de>; Sat, 12 Oct 2019 13:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tszXvjp5vlqMIew/udl1iYUx+hyx2C0wvVeqFPhXILM=; b=hEyvwnytltM2J6
	yDtv6qzVXkHsjCHE+Ksai6OoFLi5tVr9JCN9bxd6xFJ4cFRKL4Q8TfLUdmRW9ayXXi/k2p4Mqi/Ip
	cX6BhUDeaCU+9BofgpzRVLOJmxQk08udfXXaAMHjpKY0cispK7eNbhojreiaUX/1leUiPARe1ZOnD
	F+idmJ752ydAN4kFhqGvoQAxEip0xFW0UDAGNkPAdM6W5IH2IC90nnBfnoByCAOjZqgtcwKI7OJOM
	hy7oSNQ5ZACLHLKFnLMEFaGQvls+TWM+G6iU0/yGseXHPnZD8AbaXt7ScjtXezebos9LFwCd2vo3Q
	t2Ggfueh9MeVoTDiEiFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJFZF-0005jN-LT; Sat, 12 Oct 2019 11:28:13 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJFZC-0005hq-EO
 for kexec@lists.infradead.org; Sat, 12 Oct 2019 11:28:11 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iJFYb-0004nF-7B; Sat, 12 Oct 2019 05:27:33 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iJFYa-0002YW-Fa; Sat, 12 Oct 2019 05:27:33 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Lianbo Jiang <lijiang@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
Date: Sat, 12 Oct 2019 06:26:42 -0500
In-Reply-To: <20191012022140.19003-4-lijiang@redhat.com> (Lianbo Jiang's
 message of "Sat, 12 Oct 2019 10:21:40 +0800")
Message-ID: <87d0f22oi5.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iJFYa-0002YW-Fa; ; ; mid=<87d0f22oi5.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+uhegb7qW+kWraLRHYBavwA95Me10UhX4=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa01.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa01 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa01 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;Lianbo Jiang <lijiang@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 327 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 2.6 (0.8%), b_tie_ro: 1.88 (0.6%), parse: 1.00
 (0.3%), extract_message_metadata: 4.4 (1.3%), get_uri_detail_list: 2.2
 (0.7%), tests_pri_-1000: 3.2 (1.0%), tests_pri_-950: 1.20 (0.4%),
 tests_pri_-900: 0.95 (0.3%), tests_pri_-90: 26 (7.8%), check_bayes: 24
 (7.4%), b_tokenize: 6 (1.9%), b_tok_get_all: 8 (2.3%), b_comp_prob:
 1.86 (0.6%), b_tok_touch_all: 4.1 (1.3%), b_finish: 0.63 (0.2%),
 tests_pri_0: 274 (83.9%), check_dkim_signature: 0.38 (0.1%),
 check_dkim_adsp: 2.5 (0.8%), poll_dns_idle: 1.11 (0.3%), tests_pri_10:
 1.90 (0.6%), tests_pri_500: 5 (1.6%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_042810_511085_312075F3 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Lianbo Jiang <lijiang@redhat.com> writes:

> When the crashkernel kernel command line option is specified, the
> low 1MiB memory will always be reserved, which makes that the memory
> allocated later won't fall into the low 1MiB area, thereby, it's not
> necessary to create a backup region and also no need to copy the first
> 640k content to a backup region.
>
> Currently, the code related to the backup region can be safely removed,
> so lets clean up.
>
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---

> diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
> index eb651fbde92a..cc5774fc84c0 100644
> --- a/arch/x86/kernel/crash.c
> +++ b/arch/x86/kernel/crash.c
> @@ -173,8 +173,6 @@ void native_machine_crash_shutdown(struct pt_regs *regs)
>  
>  #ifdef CONFIG_KEXEC_FILE
>  
> -static unsigned long crash_zero_bytes;
> -
>  static int get_nr_ram_ranges_callback(struct resource *res, void *arg)
>  {
>  	unsigned int *nr_ranges = arg;
> @@ -234,9 +232,15 @@ static int prepare_elf64_ram_headers_callback(struct resource *res, void *arg)
>  {
>  	struct crash_mem *cmem = arg;
>  
> -	cmem->ranges[cmem->nr_ranges].start = res->start;
> -	cmem->ranges[cmem->nr_ranges].end = res->end;
> -	cmem->nr_ranges++;
> +	if (res->start >= SZ_1M) {
> +		cmem->ranges[cmem->nr_ranges].start = res->start;
> +		cmem->ranges[cmem->nr_ranges].end = res->end;
> +		cmem->nr_ranges++;
> +	} else if (res->end > SZ_1M) {
> +		cmem->ranges[cmem->nr_ranges].start = SZ_1M;
> +		cmem->ranges[cmem->nr_ranges].end = res->end;
> +		cmem->nr_ranges++;
> +	}

What is going on with this chunk?  I can guess but this needs a clear
comment.

>  
>  	return 0;
>  }

> @@ -356,9 +337,12 @@ int crash_setup_memmap_entries(struct kimage *image, struct boot_params *params)
>  	memset(&cmd, 0, sizeof(struct crash_memmap_data));
>  	cmd.params = params;
>  
> -	/* Add first 640K segment */
> -	ei.addr = image->arch.backup_src_start;
> -	ei.size = image->arch.backup_src_sz;
> +	/*
> +	 * Add the low memory range[0x1000, SZ_1M], skip
> +	 * the first zero page.
> +	 */
> +	ei.addr = PAGE_SIZE;
> +	ei.size = SZ_1M - PAGE_SIZE;
>  	ei.type = E820_TYPE_RAM;
>  	add_e820_entry(params, &ei);

Likewise here.  Why do we need a special case?
Why the magic with PAGE_SIZE?

Is this needed because of your other special case above?

When SME is active and the crashkernel command line is enabled do we
just want to leave the low 1MB unencrypted?  So we don't need any
special cases?

Eric

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
