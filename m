Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A72B27B59
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 13:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rIu8j4MHdCls3fmRW/GLt32bQP5bhi9e+ttZO1zh5g=; b=RwyMZ1FTXGeyla
	fPBwwIBma254y7H5af3bXIue3iChb1httU2UIEeSGkc8MnlUKIlwyO0fXzWSR63GyLJqAC0lbOdGX
	d+8y6bbUGu0WpeZExA+IR6J7iAiAyrAPOP1lfWR4XxD1asYUQLrxGmlgnZqmb9q4kN/0XLeBjLJI+
	LwyKCNIKz+AujD5Brngw9apFT9FHfLPQAnBsgz7AuCUZqUonhs2slWMpnvlOPd6IVovqJAN9apB+H
	5QBjE2XKvmFvEp6+Z63wza+d1My6QEmHJZGyO8o9wPZ6Y1IhzIV3zzwxlh5vnkhdwI7+yD80G/7BD
	VmiOGkT2ywYBWoEdG35A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlYN-0007U6-0R; Thu, 23 May 2019 11:06:31 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlYI-0007Th-AX
 for kexec@lists.infradead.org; Thu, 23 May 2019 11:06:28 +0000
Received: by mail-qt1-f195.google.com with SMTP id f24so6125751qtk.11
 for <kexec@lists.infradead.org>; Thu, 23 May 2019 04:06:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3vzwfyGs/yRZbUDFPgwDL/Vq5EW/XYtE5NYWQL3sCcA=;
 b=GpsygXGgKI0MdQB5ZKJi/WAL5RV/lBTm4egrbSn7CwUq7qMNUsrDAQN30SRFbSlysp
 Inm8uoDz7Fz60YpAbjcW0soSqxTKGHwRH/5Z0fldVSIQwgk4+GrzNC6j4jcPSpEzz95a
 kay1M+2jlGhYPc4CXwfgHWLv9ZNmZaQDo7UCFnqwYsuqSEbZ4CJ66PhoEA1NWohGXI2k
 Vis1VO6Yu8mQv1bSsc8f+FnC0e7hSJq4OSktLBT7b44H4rtWjnvzDPZLY2P5gS/9YFLj
 eZO9gq/xMMRiJKo8OkYbcfHKfc+zZ1LDioDYsT3PR+2w7E37X2woCFsH1US/QZv7Nzz8
 rKdw==
X-Gm-Message-State: APjAAAWYfh4pez1TgPydHf5fXcDNZqA8o1kHvW0XYUdd4vopp5BAB1fO
 0qaaFQl3E5UepAim0ubc8flgrPbGf0qU2YPvEwKEhg==
X-Google-Smtp-Source: APXvYqzO7NYHNFkGiCrT9GqFVVtm62Q+JTr3gXX84Uzhw+UMxVDxBqn9sQpHTElJHMqf2QtaJknpWxDePDqaBEOdGbo=
X-Received: by 2002:ac8:3593:: with SMTP id k19mr77795180qtb.210.1558609585147; 
 Thu, 23 May 2019 04:06:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190514050959.21093-1-kasong@redhat.com>
 <20190514050959.21093-3-kasong@redhat.com>
 <20190523031609.GB8174@dhcp-128-65.nay.redhat.com>
 <CACPcB9eKOGNLxBLVfX8uqWS1uxjxMFtNR8h=MqaueZ+Ymr5QJg@mail.gmail.com>
In-Reply-To: <CACPcB9eKOGNLxBLVfX8uqWS1uxjxMFtNR8h=MqaueZ+Ymr5QJg@mail.gmail.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 23 May 2019 19:06:13 +0800
Message-ID: <CACPcB9f3RJsJsYTbjFvT_QU+6rr_xE0f=tezZ-Yf0h45ymJxEA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] x86: Introduce helpers for getting RSDP address
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_040627_564886_6EE075DC 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:43 AM Kairui Song <kasong@redhat.com> wrote:
>
> On Thu, May 23, 2019 at 11:16 AM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 05/14/19 at 01:09pm, Kairui Song wrote:
> > > On x86 RSDP is fundamental for booting the machine. When second kernel
> > > is incapable of parsing the RSDP address (eg. kexec next kernel on an EFI
> > > system with EFI service disabled), kexec should prepare the RSDP address
> > > for second kernel.
> > >
> > > Introduce helpers for getting RSDP from multiple sources, including boot
> > > params, cmdline and EFI firmware.
> > >
> > > For legacy BIOS interface, there is no better way to find the RSDP address
> > > rather than scanning the memory region and search for it, and this will
> > > always be done by the kernel as a fallback, so this is no need to try to
> > > get the RSDP address for that case.
> > >
> > > Signed-off-by: Kairui Song <kasong@redhat.com>
> > > ---
> > >  kexec/arch/i386/kexec-x86-common.c | 60 ++++++++++++++++++++++++++++++
> > >  kexec/arch/i386/kexec-x86.h        |  1 +
> > >  kexec/arch/i386/x86-linux-setup.c  |  3 +-
> > >  kexec/arch/i386/x86-linux-setup.h  |  1 +
> > >  4 files changed, 63 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> > > index de99758..4b8eb26 100644
> > > --- a/kexec/arch/i386/kexec-x86-common.c
> > > +++ b/kexec/arch/i386/kexec-x86-common.c
> > > @@ -39,6 +39,7 @@
> > >  #include "../../firmware_memmap.h"
> > >  #include "../../crashdump.h"
> > >  #include "kexec-x86.h"
> > > +#include "x86-linux-setup.h"
> > >  #include "../../kexec-xen.h"
> > >
> > >  /* Used below but not present in (older?) xenctrl.h */
> > > @@ -392,4 +393,63 @@ int get_memory_ranges(struct memory_range **range, int *ranges,
> > >       return ret;
> > >  }
> > >
> > > +static uint64_t cmdline_get_acpi_rsdp(void) {
> > > +     uint64_t acpi_rsdp = 0;
> > > +     char *tmp_cmdline, *rsdp_param;
> > >
> > > +     tmp_cmdline = get_command_line();
> > > +     rsdp_param = strstr(tmp_cmdline, "acpi_rsdp=");
> >
> > strstr will locate the first acpi_rsdp, what about multiple acpi_rsdp
> > provided?
>
> Good catch, should always use the latest acpi_rsdp provided, will fix that.
>
> >
> > BTW, if one provide a wrong adress in acpi_rsdp= cmdline then it is not
> > usable.
> >
>
> I think in that case kernel will not boot. If kexec is available then
> it means a right value is given.
>

After double check the kernel will boot even wrong acpi_rsdp is given,
so I'll drop this part. boot_params in newer kernel will be enough to
make sure kexec loop boot with EFI disabled won't fail.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
