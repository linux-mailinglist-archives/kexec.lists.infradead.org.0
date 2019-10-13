Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71220D540D
	for <lists+kexec@lfdr.de>; Sun, 13 Oct 2019 05:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqqO2vBb8rKiu0IJrlGR4/Mcz7S0NIEkKhTmJF4afK0=; b=nD0dKex1R7BxPv
	RytrjoLLr5049nzDpIXt81L//Ik63d+3wCTyPVPiI7mAYCZTBFETa+xzHQYcD/lnq+VdTdKDG4Hax
	W7XKgYlhaLoHjUIs9bIr6ZH/4uD6N+5Y9V0fAFX0clCCyb/MJNXpIb0QyxFmqeiWCXkIq5JCmyXmc
	tFHI06Ciq+/xXXNXr301dNwRmn9lIGw76ueDixI7Fd+EmKa1hapZmhh+KiHw8Vrk5uI4fVPV4ywr7
	Q1/YLMV+XJtmnAGlDnJIOyl/b0Qv9JU8EdQNdncB6PLdqh82eKm2q3z1dVPlGjQmNqKUe9bXNzklN
	LsPKoZ4vv2ZTbXJcNIoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJUyp-0001M7-Qy; Sun, 13 Oct 2019 03:55:39 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJUyi-0001Ln-Pt
 for kexec@lists.infradead.org; Sun, 13 Oct 2019 03:55:34 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iJUyZ-0001sG-FD; Sat, 12 Oct 2019 21:55:23 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iJUyY-00065i-FF; Sat, 12 Oct 2019 21:55:23 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Dave Young <dyoung@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
Date: Sat, 12 Oct 2019 22:54:31 -0500
In-Reply-To: <20191012121625.GA11587@dhcp-128-65.nay.redhat.com> (Dave Young's
 message of "Sat, 12 Oct 2019 20:16:25 +0800")
Message-ID: <87zhi51ers.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iJUyY-00065i-FF; ; ; mid=<87zhi51ers.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+s5R6SpUB0IGSO3ZKNcUhuOM1lCEV5wWg=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong,
 XM_Body_Dirty_Words autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;Dave Young <dyoung@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 591 ms - load_scoreonly_sql: 0.07 (0.0%),
 signal_user_changed: 3.4 (0.6%), b_tie_ro: 2.2 (0.4%), parse: 1.33
 (0.2%), extract_message_metadata: 6 (0.9%), get_uri_detail_list: 2.7
 (0.5%), tests_pri_-1000: 3.9 (0.7%), tests_pri_-950: 1.34 (0.2%),
 tests_pri_-900: 1.13 (0.2%), tests_pri_-90: 30 (5.0%), check_bayes: 28
 (4.7%), b_tokenize: 10 (1.6%), b_tok_get_all: 9 (1.6%), b_comp_prob:
 3.0 (0.5%), b_tok_touch_all: 3.9 (0.7%), b_finish: 0.71 (0.1%),
 tests_pri_0: 523 (88.5%), check_dkim_signature: 0.63 (0.1%),
 check_dkim_adsp: 2.2 (0.4%), poll_dns_idle: 0.57 (0.1%), tests_pri_10:
 3.3 (0.6%), tests_pri_500: 8 (1.4%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_205532_893354_9B0C3476 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, tglx@linutronix.de, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Dave Young <dyoung@redhat.com> writes:

> Hi Eric,
>
> On 10/12/19 at 06:26am, Eric W. Biederman wrote:
>> Lianbo Jiang <lijiang@redhat.com> writes:
>> 
>> > When the crashkernel kernel command line option is specified, the
>> > low 1MiB memory will always be reserved, which makes that the memory
>> > allocated later won't fall into the low 1MiB area, thereby, it's not
>> > necessary to create a backup region and also no need to copy the first
>> > 640k content to a backup region.
>> >
>> > Currently, the code related to the backup region can be safely removed,
>> > so lets clean up.
>> >
>> > Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
>> > ---
>> 
>> > diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
>> > index eb651fbde92a..cc5774fc84c0 100644
>> > --- a/arch/x86/kernel/crash.c
>> > +++ b/arch/x86/kernel/crash.c
>> > @@ -173,8 +173,6 @@ void native_machine_crash_shutdown(struct pt_regs *regs)
>> >  
>> >  #ifdef CONFIG_KEXEC_FILE
>> >  
>> > -static unsigned long crash_zero_bytes;
>> > -
>> >  static int get_nr_ram_ranges_callback(struct resource *res, void *arg)
>> >  {
>> >  	unsigned int *nr_ranges = arg;
>> > @@ -234,9 +232,15 @@ static int prepare_elf64_ram_headers_callback(struct resource *res, void *arg)
>> >  {
>> >  	struct crash_mem *cmem = arg;
>> >  
>> > -	cmem->ranges[cmem->nr_ranges].start = res->start;
>> > -	cmem->ranges[cmem->nr_ranges].end = res->end;
>> > -	cmem->nr_ranges++;
>> > +	if (res->start >= SZ_1M) {
>> > +		cmem->ranges[cmem->nr_ranges].start = res->start;
>> > +		cmem->ranges[cmem->nr_ranges].end = res->end;
>> > +		cmem->nr_ranges++;
>> > +	} else if (res->end > SZ_1M) {
>> > +		cmem->ranges[cmem->nr_ranges].start = SZ_1M;
>> > +		cmem->ranges[cmem->nr_ranges].end = res->end;
>> > +		cmem->nr_ranges++;
>> > +	}
>> 
>> What is going on with this chunk?  I can guess but this needs a clear
>> comment.
>
> Indeed it needs some code comment, this is based on some offline
> discussion.  cat /proc/vmcore will give a warning because ioremap is
> mapping the system ram.
>
> We pass the first 1M to kdump kernel in e820 as system ram so that 2nd
> kernel can use the low 1M memory because for example the trampoline
> code.
>
>> 
>> >  
>> >  	return 0;
>> >  }
>> 
>> > @@ -356,9 +337,12 @@ int crash_setup_memmap_entries(struct kimage *image, struct boot_params *params)
>> >  	memset(&cmd, 0, sizeof(struct crash_memmap_data));
>> >  	cmd.params = params;
>> >  
>> > -	/* Add first 640K segment */
>> > -	ei.addr = image->arch.backup_src_start;
>> > -	ei.size = image->arch.backup_src_sz;
>> > +	/*
>> > +	 * Add the low memory range[0x1000, SZ_1M], skip
>> > +	 * the first zero page.
>> > +	 */
>> > +	ei.addr = PAGE_SIZE;
>> > +	ei.size = SZ_1M - PAGE_SIZE;
>> >  	ei.type = E820_TYPE_RAM;
>> >  	add_e820_entry(params, &ei);
>> 
>> Likewise here.  Why do we need a special case?
>> Why the magic with PAGE_SIZE?
>
> Good catch, the zero page part is useless, I think no other special
> reason, just assumed zero page is not usable, but it should be ok to
> remove the special handling, just pass 0 - 1M is good enough.

But if we have stopped special casing the low 1M.  Why do we need a
special case here at all?

If you need the special case it is almost certainly wrong to say you
have ram above 640KiB and below 1MiB.  That is the legacy ROM and video
MMIO area.

There is a reason the original code said 640KiB.

Eric

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
