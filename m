Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476A2274D2
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 05:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaOP4LjXGz6y/AWzwKWdiFaAkpOR4um2Yl25rWMwXZ0=; b=mKV+Uxk7GUIumE
	vBBiMk9XBULbKFxE0S9OB8lgTLKNb1iju49A4LOk+S/3+m30zfkiIaz12MfWsCcv/mfG8VyYcSV0t
	g1FKTQKXUoCF7e7JnWyuGZdKmJp4aUNxWC9D75WcNDk8f4HVoafalXk3weKUw977UHL4pMqAqEeoT
	4n4eUAvFg0zCRS1/1K8gCW0YTT8xQU1ZpN7VRx1akoDbVVgjbGZ+aQilWystwP9CXsR7Bw2QnFmT3
	TTDjPsnl+P+AxMUvhdQuCGWuiM8fM163VZWtCvDhFRswa7Ajj84dqlRqrYs+hg0oObm6n/kxAmdm/
	+ckBINt7YVICxoAuuVaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeds-0000pH-Mk; Thu, 23 May 2019 03:43:44 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTedn-0000oO-Lf
 for kexec@lists.infradead.org; Thu, 23 May 2019 03:43:42 +0000
Received: by mail-it1-f196.google.com with SMTP id i10so7384676ite.0
 for <kexec@lists.infradead.org>; Wed, 22 May 2019 20:43:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+spfyBMRqK6a0pE+LJife9SMh3bOreH5Vu5IGYMQwWI=;
 b=nD28SnYNXyp5NcB6qcaTsc9qXbiZ39cOv3wfJN34nNxfzWgi5Rsy8f1cLoF7GYHu3b
 L+C/uhiQt3oqvK6eWWZiOABmvbY8tR63/TKpJu8BlOGjtT3Zs3aroAiRJZDk9HRUntPl
 myBAGjx21gmSkZg1F+gX81QvG6sR22WVkNJqXYmaIM2KvJ6G0pYJGk+HGnXhWTdIY02J
 QazWRz9y6qbDGydNf0QJditn/wWeCkgkI9vKPRgS6rJIFyh9OLUgmCdoBX0F2llj77Db
 6YRUU3nOAkXHNnAiiY55TtbI/1aK9o/TLhwtQV6laxCgO5eFBuD5rkMZSRJcLBjKOQRq
 VHXA==
X-Gm-Message-State: APjAAAVzBKA/lxpUfM/YmZOKhpcX/I09xuixzBzckwmvf4kbMfr5zsNF
 4ItLzxDJJXCoER7MDawEcmVA8XbPq5qNg+CUBuxGdx8UQCrbAw==
X-Google-Smtp-Source: APXvYqzZJRIihZ11yWaYXi3/jj95RLvsnRMHrxyuqxxdyIYQ+N1U47V0H5KmkVVc171aJWemi6tJZu2OvumVErOraHE=
X-Received: by 2002:a02:3342:: with SMTP id k2mr55641925jak.15.1558583016065; 
 Wed, 22 May 2019 20:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190514050959.21093-1-kasong@redhat.com>
 <20190514050959.21093-3-kasong@redhat.com>
 <20190523031609.GB8174@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190523031609.GB8174@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 23 May 2019 11:43:25 +0800
Message-ID: <CACPcB9eKOGNLxBLVfX8uqWS1uxjxMFtNR8h=MqaueZ+Ymr5QJg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] x86: Introduce helpers for getting RSDP address
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_204339_712981_216B5F48 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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

On Thu, May 23, 2019 at 11:16 AM Dave Young <dyoung@redhat.com> wrote:
>
> On 05/14/19 at 01:09pm, Kairui Song wrote:
> > On x86 RSDP is fundamental for booting the machine. When second kernel
> > is incapable of parsing the RSDP address (eg. kexec next kernel on an EFI
> > system with EFI service disabled), kexec should prepare the RSDP address
> > for second kernel.
> >
> > Introduce helpers for getting RSDP from multiple sources, including boot
> > params, cmdline and EFI firmware.
> >
> > For legacy BIOS interface, there is no better way to find the RSDP address
> > rather than scanning the memory region and search for it, and this will
> > always be done by the kernel as a fallback, so this is no need to try to
> > get the RSDP address for that case.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >  kexec/arch/i386/kexec-x86-common.c | 60 ++++++++++++++++++++++++++++++
> >  kexec/arch/i386/kexec-x86.h        |  1 +
> >  kexec/arch/i386/x86-linux-setup.c  |  3 +-
> >  kexec/arch/i386/x86-linux-setup.h  |  1 +
> >  4 files changed, 63 insertions(+), 2 deletions(-)
> >
> > diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> > index de99758..4b8eb26 100644
> > --- a/kexec/arch/i386/kexec-x86-common.c
> > +++ b/kexec/arch/i386/kexec-x86-common.c
> > @@ -39,6 +39,7 @@
> >  #include "../../firmware_memmap.h"
> >  #include "../../crashdump.h"
> >  #include "kexec-x86.h"
> > +#include "x86-linux-setup.h"
> >  #include "../../kexec-xen.h"
> >
> >  /* Used below but not present in (older?) xenctrl.h */
> > @@ -392,4 +393,63 @@ int get_memory_ranges(struct memory_range **range, int *ranges,
> >       return ret;
> >  }
> >
> > +static uint64_t cmdline_get_acpi_rsdp(void) {
> > +     uint64_t acpi_rsdp = 0;
> > +     char *tmp_cmdline, *rsdp_param;
> >
> > +     tmp_cmdline = get_command_line();
> > +     rsdp_param = strstr(tmp_cmdline, "acpi_rsdp=");
>
> strstr will locate the first acpi_rsdp, what about multiple acpi_rsdp
> provided?

Good catch, should always use the latest acpi_rsdp provided, will fix that.

>
> BTW, if one provide a wrong adress in acpi_rsdp= cmdline then it is not
> usable.
>

I think in that case kernel will not boot. If kexec is available then
it means a right value is given.

> So not sure if adding this cmdline param is necessary, maybe only add
> efi case will be reliable.

Adding the cmdline param ensure kexec boot loop won't fail. eg. in an
older version kernel booted with kexec, and have EFI disabled, then
cmdline is the only source for getting and storing the RSDP address.

>
> > +
> > +     if (rsdp_param)
> > +             sscanf(rsdp_param, "acpi_rsdp=%lx", &acpi_rsdp);
> > +
> > +     free(tmp_cmdline);
> > +     return acpi_rsdp;
> > +}
> > +
> > +static uint64_t bootparam_get_acpi_rsdp(void) {
> > +     uint64_t acpi_rsdp = 0;
> > +     off_t offset = offsetof(struct x86_linux_param_header, acpi_rsdp_addr);
> > +
> > +     if (get_bootparam(&acpi_rsdp, offset, sizeof(acpi_rsdp)))
> > +             return 0;
> > +
> > +     return acpi_rsdp;
> > +}
> > +
> > +static uint64_t efi_get_acpi_rsdp(void) {
> > +     FILE *fp;
> > +     char line[MAX_LINE], *s;
> > +     uint64_t acpi_rsdp = 0;
> > +
> > +     fp = fopen("/sys/firmware/efi/systab", "r");
> > +     if (!fp)
> > +             return acpi_rsdp;
> > +
> > +     while(fgets(line, sizeof(line), fp) != 0) {
> > +             /* ACPI20= always goes before ACPI= */
> > +             if ((strstr(line, "ACPI20=")) || (strstr(line, "ACPI="))) {
> > +                     s = strchr(line, '=') + 1;
> > +                     sscanf(s, "0x%lx", &acpi_rsdp);
> > +                     break;
> > +             }
> > +     }
> > +     fclose(fp);
> > +
> > +     return acpi_rsdp;
> > +}
> > +
> > +uint64_t get_acpi_rsdp(void)
> > +{
> > +     uint64_t acpi_rsdp = 0;
> > +
> > +     acpi_rsdp = cmdline_get_acpi_rsdp();
> > +
> > +     if (!acpi_rsdp)
> > +             acpi_rsdp = bootparam_get_acpi_rsdp();
> > +
> > +     if (!acpi_rsdp)
> > +             acpi_rsdp = efi_get_acpi_rsdp();
> > +
> > +     return acpi_rsdp;
> > +}
> > diff --git a/kexec/arch/i386/kexec-x86.h b/kexec/arch/i386/kexec-x86.h
> > index c2bcd37..1b58c3b 100644
> > --- a/kexec/arch/i386/kexec-x86.h
> > +++ b/kexec/arch/i386/kexec-x86.h
> > @@ -86,4 +86,5 @@ int nbi_load(int argc, char **argv, const char *buf, off_t len,
> >  void nbi_usage(void);that
> >
> >  extern unsigned xen_e820_to_kexec_type(uint32_t type);
> > +extern uint64_t get_acpi_rsdp(void);
> >  #endif /* KEXEC_X86_H */
> > diff --git a/kexec/arch/i386/x86-linux-setup.c b/kexec/arch/i386/x86-linux-setup.c
> > index 8fad115..5ca7c25 100644
> > --- a/kexec/arch/i386/x86-linux-setup.c
> > +++ b/kexec/arch/i386/x86-linux-setup.c
> > @@ -123,7 +123,6 @@ void setup_linux_bootloader_parameters_high(
> >       cmdline_ptr[cmdline_len - 1] = '\0';
> >  }
> >
> > -static int get_bootparam(void *buf, off_t offset, size_t size);
> >  static int setup_linux_vesafb(struct x86_linux_param_header *real_mode)
> >  {
> >       struct fb_fix_screeninfo fix;
> > @@ -452,7 +451,7 @@ char *find_mnt_by_fsname(char *fsname)
> >       return mntdir;
> >  }
> >
> > -static int get_bootparam(void *buf, off_t offset, size_t size)
> > +int get_bootparam(void *buf, off_t offset, size_t size)
> >  {
> >       int data_file;
> >       char *debugfs_mnt, *sysfs_mnt;
> > diff --git a/kexec/arch/i386/x86-linux-setup.h b/kexec/arch/i386/x86-linux-setup.h
> > index f5d23d3..0c651e5 100644
> > --- a/kexec/arch/i386/x86-linux-setup.h
> > +++ b/kexec/arch/i386/x86-linux-setup.h
> > @@ -21,6 +21,7 @@ static inline void setup_linux_bootloader_parameters(
> >  }
> >  void setup_linux_system_parameters(struct kexec_info *info,
> >       struct x86_linux_param_header *real_mode);
> > +int get_bootparam(void *buf, off_t offset, size_t size);
> >
> >
> >  #define SETUP_BASE    0x90000
> > --
> > 2.20.1
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec



-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
