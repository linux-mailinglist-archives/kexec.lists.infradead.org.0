Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177A1A349B
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 12:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nge4SJOKprpEHkdqPkZDimSTLogAZUaKzrIMxHPDFak=; b=TdAwr0j5b91P0J
	sjI++aA3YAfsEtUJvadBwYnVZi4aJjbJAcmwihCQ0e386X2FCishBEDGmNK5xDdDDc5zK7TLNZiqG
	CKC5jEOzfgkMAY9TedWP1Im5Rvc0eZSOcPUf857mheJCBbOkTyRFXB9WWmfN9wruQeH8VXcyHwFJe
	SRLizCUhctpVxgOBp+hWoMK+AcR9PGKTPxcWRpLTyWa9dPOOa7kH32IhviHLulPTGl0tRG+r6JfdA
	Djh85mXwf4vJkO+q0bfjEcq0sh9TxB9rhIf67f6mUIB1MpXUhOFdjCas5wE43oBmwUP4B+E8hpDVI
	HbPyBKA901IwEt3CfLAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dmy-0006OH-1F; Fri, 30 Aug 2019 10:05:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dmv-0006Ny-2g
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 10:05:50 +0000
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13F19641C7
 for <kexec@lists.infradead.org>; Fri, 30 Aug 2019 10:05:48 +0000 (UTC)
Received: by mail-lj1-f197.google.com with SMTP id c2so756826ljf.11
 for <kexec@lists.infradead.org>; Fri, 30 Aug 2019 03:05:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jBi92bkOhfg4jps4/D/cTYCnqRLsGTzUtp4/VQZoiFI=;
 b=ssY2To+459In75ihxQvFAI/5lDcA9aC59GA/K01pzttS0T5CsQo+H2eMyqap8zCuiy
 20D6ljaK2ibYACJATfwCLS/k3j7XLaa9O6polQ//qpsMB9Zzh2uSDlV1CS+Jfspjc8Z2
 fM9vJtSMjho6EDd917DwCIpYGOBExVzJQqE4ZEBT8IciDlMcSjEdX1C0pfWO9w3mVlFL
 kAsflYO13LaH4orj21qYqSiB0IR7qMok40gTG50c3CCe72j67muHGtfjgHXcDbSFs4Ki
 FztmiwaWFI1E3sCh5Ng5WAreyHS7wbb4llKR25MuwYZkn5oORqm3YW1vefUPOcVXGAZh
 v3ZQ==
X-Gm-Message-State: APjAAAWchX8NTjH3QM0viRLMzklwszWf5U3DRZNAMKm82RmI0T56+U73
 QBbiFxydcrnjmJLBkT7UdZl1hW+oiYF7zPPDowdjID741kdJsQ0D+wRRoLlPeTKQZDlZ2SzGp9v
 l04p5BYxQuEaxw+eo+hMcydimfy5XhBIvztEN
X-Received: by 2002:ac2:5323:: with SMTP id f3mr5484877lfh.36.1567159545756;
 Fri, 30 Aug 2019 03:05:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6UjeIt3Oqx7A3YoRWQgu7tGPhF0foP4QMC/i73zJR+P9yh8t91eCtnc0B4nblhLg+G5tvWBtd6aUJoDPLAVY=
X-Received: by 2002:ac2:5323:: with SMTP id f3mr5484857lfh.36.1567159545528;
 Fri, 30 Aug 2019 03:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190830092351.GE12242@MiWiFi-R3L-srv>
 <99faeaab-a4ea-e204-f4e8-9b74f86e5e43@molgen.mpg.de>
In-Reply-To: <99faeaab-a4ea-e204-f4e8-9b74f86e5e43@molgen.mpg.de>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 30 Aug 2019 15:35:33 +0530
Message-ID: <CACi5LpOBQCXv1v=aGjLZ0tE_qUDgcR8DtcC_uA5nC-tmm4UnZw@mail.gmail.com>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
To: Donald Buczek <buczek@molgen.mpg.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_030549_157279_6FAB3DFB 
X-CRM114-Status: GOOD (  29.29  )
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
Cc: Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 3:04 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
>
> Dear Baoquan,
>
> On 8/30/19 11:23 AM, Baoquan He wrote:
> > On 08/30/19 at 11:12am, Donald Buczek wrote:
> >> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> >> region on 5-level paging") changed the base of the direct mapping
> >> from 0xffff880000000000 to 0xffff888000000000. This was merged
> >> into v4.20-rc2.
> >
> > A good catch and necessary fix, thanks.
> >
> > Does it have issue in makedumpfile?
>
> We don't use makedumpfile. We use `cp /proc/vmcore /mnt/crash.vmcore` in the panic kernel.

That shouldn't be a problem in makedumpfile as we have a generic way
to calculate the PAGE_OFFSET value there from the PT_LOADs in the
'/proc/kcore' file (which I mentioned in the other email conversation,
see [0]):

static int
get_page_offset_x86_64(void)
{
<..snip..>
    if (get_num_pt_loads()) {
        /*
         * Linux 4.19 (only) adds KCORE_REMAP PT_LOADs, which have
         * virt_start < __START_KERNEL_map, to /proc/kcore. In order
         * not to select them, we select the last valid PT_LOAD.
         */
        for (i = 0;
            get_pt_load(i, &phys_start, NULL, &virt_start, NULL);
            i++) {
            if (virt_start != NOT_KV_ADDR
                    && virt_start < __START_KERNEL_map
                    && phys_start != NOT_PADDR) {
                page_offset = virt_start - phys_start;
            }
        }
        if (page_offset) {
            info->page_offset = page_offset;
            DEBUG_MSG("page_offset  : %lx (pt_load)\n",
                info->page_offset);
            return TRUE;
        }
    }
<..snip..>

Also as I mentioned in the other thread, I don't think adding
different MACRO value for a kernel version is a long-term maintainable
approach. Instead I am working on adding a similar functionality as
present in makedumpfile to make the PAGE_OFFSET calculation generic.
Only if we fail to calculate PAGE_OFFSET through a generic method
should we fall back on MACRO values for backward compatibility.

I will try to post the patch for reviews by tomorrow.

[0]. https://lkml.org/lkml/2019/8/28/1060

Thanks,
Bhupesh

> Without this patch, the file /mnt/crash.vmcore has the wrong vaddr in the elf headers and can't be processed by gdb or crash.
>
> With this patch, the file has the correct vaddr an can be processed by gdb and crash.
>
> Btw:  I've got four strange error replies for my mail.
>
>      Date: 30 Aug 2019 05:13:31 EDT
>      From: MAILER_DAEMON@email.uscc.net
>      To: buczek@molgen.mpg.de
>          Message to 7867650283@email.uscc.net failed.
>
> I hope, my patch reaches the right people anyway.
>
> Best
>    Donald
>
>
> >
> > #ifdef __x86_64__
> > #define __PAGE_OFFSET_ORIG      (0xffff810000000000) /* 2.6.26, or former */
> > #define __PAGE_OFFSET_2_6_27    (0xffff880000000000) /* 2.6.27, or later  */
> > #define __PAGE_OFFSET_5LEVEL    (0xff10000000000000) /* 5-level page table */
> > ...
> > #endif
> >
> > Thanks
> > Baoquan
> >
> >>
> >> Update to new address accordingly.
> >> ---
> >>   kexec/arch/i386/crashdump-x86.c | 2 ++
> >>   kexec/arch/i386/crashdump-x86.h | 3 ++-
> >>   2 files changed, 4 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
> >> index a2aea31..c79791f 100644
> >> --- a/kexec/arch/i386/crashdump-x86.c
> >> +++ b/kexec/arch/i386/crashdump-x86.c
> >> @@ -61,6 +61,8 @@ static int get_kernel_page_offset(struct kexec_info *UNUSED(info),
> >>
> >>              if (kv < KERNEL_VERSION(2, 6, 27))
> >>                      elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
> >> +            else if (kv < KERNEL_VERSION(4, 20, 0))
> >> +                    elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_4_20_0;
> >>              else
> >>                      elf_info->page_offset = X86_64_PAGE_OFFSET;
> >>      }
> >> diff --git a/kexec/arch/i386/crashdump-x86.h b/kexec/arch/i386/crashdump-x86.h
> >> index ddee19f..e4fdc82 100644
> >> --- a/kexec/arch/i386/crashdump-x86.h
> >> +++ b/kexec/arch/i386/crashdump-x86.h
> >> @@ -13,7 +13,8 @@ int load_crashdump_segments(struct kexec_info *info, char *mod_cmdline,
> >>
> >>   #define X86_64__START_KERNEL_map   0xffffffff80000000ULL
> >>   #define X86_64_PAGE_OFFSET_PRE_2_6_27      0xffff810000000000ULL
> >> -#define X86_64_PAGE_OFFSET          0xffff880000000000ULL
> >> +#define X86_64_PAGE_OFFSET_PRE_4_20_0       0xffff880000000000ULL
> >> +#define X86_64_PAGE_OFFSET  0xffff888000000000ULL
> >>
> >>   #define X86_64_MAXMEM                      0x3fffffffffffUL
> >>
> >> --
> >> 2.22.0
> >>
> >>
> >> _______________________________________________
> >> kexec mailing list
> >> kexec@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/kexec
>
>
> --
> Donald Buczek
> buczek@molgen.mpg.de
> Tel: +49 30 8413 1433

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
