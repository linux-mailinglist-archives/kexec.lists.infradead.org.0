Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7652D4F95
	for <lists+kexec@lfdr.de>; Sat, 12 Oct 2019 14:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOxvFc9EelAFLK0RPOl06FZKGpyxzpiwfOVH78hacMc=; b=MzQAO7qklr+yBp
	n1iCh9hEQJFNQcKwNXOO4eqhMk+CjzgWAZ1unbtAJ2RM94Ll7mYJs676IGGFckpxjg9q1kBDN2qv7
	0A/QckwcHfEME2UnaUnRBjnavEQg40k/c+eKfvhEVKfVg4BZ9o1eXHc0+GP96CdwP3bnVc+0N3N2U
	JSZVxWeGmjFhMdy0nYJbtzLHz5Xj/kk4tBEtTc+2Da+Pn1btk38iWYZTZWtAKVmVRrw0lU9HXBNSz
	PKPiC2B2C4fGwxpqUCFRX3hd2rMBQ95Y+hatbvZej81FXPJRiEO331daAxI+0BNzjdvgShW/w4y2N
	e5AFO/JlIWMBTKYDm4nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJGKA-0005OG-6X; Sat, 12 Oct 2019 12:16:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJGK7-0005Nu-LL
 for kexec@lists.infradead.org; Sat, 12 Oct 2019 12:16:41 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EF21F3082A98;
 Sat, 12 Oct 2019 12:16:37 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-125.pek2.redhat.com
 [10.72.12.125])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CECEE10013D9;
 Sat, 12 Oct 2019 12:16:32 +0000 (UTC)
Date: Sat, 12 Oct 2019 20:16:25 +0800
From: Dave Young <dyoung@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
Message-ID: <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d0f22oi5.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Sat, 12 Oct 2019 12:16:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_051639_733217_593108ED 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, tglx@linutronix.de, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Eric,

On 10/12/19 at 06:26am, Eric W. Biederman wrote:
> Lianbo Jiang <lijiang@redhat.com> writes:
> 
> > When the crashkernel kernel command line option is specified, the
> > low 1MiB memory will always be reserved, which makes that the memory
> > allocated later won't fall into the low 1MiB area, thereby, it's not
> > necessary to create a backup region and also no need to copy the first
> > 640k content to a backup region.
> >
> > Currently, the code related to the backup region can be safely removed,
> > so lets clean up.
> >
> > Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> > ---
> 
> > diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
> > index eb651fbde92a..cc5774fc84c0 100644
> > --- a/arch/x86/kernel/crash.c
> > +++ b/arch/x86/kernel/crash.c
> > @@ -173,8 +173,6 @@ void native_machine_crash_shutdown(struct pt_regs *regs)
> >  
> >  #ifdef CONFIG_KEXEC_FILE
> >  
> > -static unsigned long crash_zero_bytes;
> > -
> >  static int get_nr_ram_ranges_callback(struct resource *res, void *arg)
> >  {
> >  	unsigned int *nr_ranges = arg;
> > @@ -234,9 +232,15 @@ static int prepare_elf64_ram_headers_callback(struct resource *res, void *arg)
> >  {
> >  	struct crash_mem *cmem = arg;
> >  
> > -	cmem->ranges[cmem->nr_ranges].start = res->start;
> > -	cmem->ranges[cmem->nr_ranges].end = res->end;
> > -	cmem->nr_ranges++;
> > +	if (res->start >= SZ_1M) {
> > +		cmem->ranges[cmem->nr_ranges].start = res->start;
> > +		cmem->ranges[cmem->nr_ranges].end = res->end;
> > +		cmem->nr_ranges++;
> > +	} else if (res->end > SZ_1M) {
> > +		cmem->ranges[cmem->nr_ranges].start = SZ_1M;
> > +		cmem->ranges[cmem->nr_ranges].end = res->end;
> > +		cmem->nr_ranges++;
> > +	}
> 
> What is going on with this chunk?  I can guess but this needs a clear
> comment.

Indeed it needs some code comment, this is based on some offline
discussion.  cat /proc/vmcore will give a warning because ioremap is
mapping the system ram.

We pass the first 1M to kdump kernel in e820 as system ram so that 2nd
kernel can use the low 1M memory because for example the trampoline
code.

> 
> >  
> >  	return 0;
> >  }
> 
> > @@ -356,9 +337,12 @@ int crash_setup_memmap_entries(struct kimage *image, struct boot_params *params)
> >  	memset(&cmd, 0, sizeof(struct crash_memmap_data));
> >  	cmd.params = params;
> >  
> > -	/* Add first 640K segment */
> > -	ei.addr = image->arch.backup_src_start;
> > -	ei.size = image->arch.backup_src_sz;
> > +	/*
> > +	 * Add the low memory range[0x1000, SZ_1M], skip
> > +	 * the first zero page.
> > +	 */
> > +	ei.addr = PAGE_SIZE;
> > +	ei.size = SZ_1M - PAGE_SIZE;
> >  	ei.type = E820_TYPE_RAM;
> >  	add_e820_entry(params, &ei);
> 
> Likewise here.  Why do we need a special case?
> Why the magic with PAGE_SIZE?

Good catch, the zero page part is useless, I think no other special
reason, just assumed zero page is not usable, but it should be ok to
remove the special handling, just pass 0 - 1M is good enough.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
