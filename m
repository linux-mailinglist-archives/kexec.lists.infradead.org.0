Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AD53B28B
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 11:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWxWOQSAK4UJDpPtBakzKxrwDy3NbXWwOopVm0LFGz4=; b=VeelFk7j/ClLTZ
	9wKvpWo7d8vRripCv8ZCObIlsSfgLrJ2qmSctdsZWQBAMmSupa4f7sSM0+uhCKuEXttkvtlcAaKAw
	YvcLnCrFyKhXiwrpCJe3sZQYt2h8T/Ku14t+Z02xjYKy6Jzdv5ffM2/AxIRIvxqv007M9TGbHt91O
	HA7pG3z8rTUXLFm+PMyhIoSLDVcLjiiqmdMdejIEdA8Jxbqmkbd/EwRMQI3F0sVZ9VmpEy0MaeW0X
	ujAEQ8tiuSS2/JyxZmm/GAjqcF21G/ydtu6pZg6oxNGYcZIrYLFYSwZSr3YQKSE6lOzVqMtxuNKwX
	9ORtd4WlXg6vZGhGzvfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGzf-0005tr-PT; Mon, 10 Jun 2019 09:53:35 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGzb-0005sy-RW
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 09:53:33 +0000
Received: by mail-it1-f196.google.com with SMTP id j204so12168741ite.4
 for <kexec@lists.infradead.org>; Mon, 10 Jun 2019 02:53:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zP+U4owfQx+AxiXAq571meL0GzDGTRsnhiqrLs/D2hU=;
 b=ZpcQSlUGKPz2kGZZcMQ7oRvduaJi/zoWxjITcfoLm12RWmJDx3cY4N2LOXHyYcAJTf
 k7PfWo1e3PUJNcqnsiWZ2trZ2a0Bk1VktUhdBKByUyIsq5vWiytmm95eyQd5L5rALNoU
 AkIlYUT+Bbn9U0Lq844+ilq2rg0b9XyqIPbWqKZlAeVqS3PJaoh/LIlocumV1OdsQITs
 f9n+qEji38Y8aT68fhKYQBvq6tvDERNt7A9O5smbFz8oZHVS9lQgOqxcNiNPnBQBkw6R
 QgkPhJAbuYjt7kEE97OIHRUhyDGZ2sjE9OnQD2cbSgtMLZKSPepnpKNr8yOs1oPOk0H6
 uewg==
X-Gm-Message-State: APjAAAV/QCsr5rvOWNXRdalJhNk1So8ZiZFXWCUg+N282d5eY7otzLNT
 MmiHwTfHe7aWsRpjDsnCAVzevbp3y0UgWvAg495U3A==
X-Google-Smtp-Source: APXvYqxiB6IGg45gdK2p5guuqIhLLseg3VCwZw7cBiPX4uxiDiO6qRniP/UJNrbg/+4SuYQ5kw8sqXpkJ7a5PA1Wl8Q=
X-Received: by 2002:a02:7b2d:: with SMTP id q45mr41554211jac.127.1560160410784; 
 Mon, 10 Jun 2019 02:53:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190610073617.19767-1-kasong@redhat.com>
In-Reply-To: <20190610073617.19767-1-kasong@redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 10 Jun 2019 17:53:19 +0800
Message-ID: <CACPcB9cRjPPMkC7+yToCZ_MoVw8McMcycRQ6tZT3yjD6pi4-NA@mail.gmail.com>
Subject: Re: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
To: Junichi Nomura <j-nomura@ce.jp.nec.com>, Dave Young <dyoung@redhat.com>, 
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_025331_886650_1828AB93 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Chao Fan <fanc.fnst@cn.fujitsu.com>, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, the arch/x86 maintainers <x86@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 3:37 PM Kairui Song <kasong@redhat.com> wrote:
>
> With the recent addition of RSDP parsing in decompression stage, kexec
> kernel now needs ACPI tables to be covered by the identity mapping.
> And in commit 6bbeb276b71f ("x86/kexec: Add the EFI system tables and
> ACPI tables to the ident map"), ACPI tables memory region was added to
> the ident map.
>
> But on some machines, there is only ACPI NVS memory region, and the ACPI
> tables is located in the NVS region instead. In such case second kernel
> will still fail when trying to access ACPI tables.
>
> So, to fix the problem, add NVS memory region in the ident map as well.
>
> Fixes: 6bbeb276b71f ("x86/kexec: Add the EFI system tables and ACPI tables to the ident map")
> Suggested-by: Junichi Nomura <j-nomura@ce.jp.nec.com>
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>
> Tested with my laptop and VM, on top of current tip:x86/boot.
>
>  arch/x86/kernel/machine_kexec_64.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
> index 3c77bdf7b32a..a406602fdb3c 100644
> --- a/arch/x86/kernel/machine_kexec_64.c
> +++ b/arch/x86/kernel/machine_kexec_64.c
> @@ -54,14 +54,26 @@ static int mem_region_callback(struct resource *res, void *arg)
>  static int
>  map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p)
>  {
> -       unsigned long flags = IORESOURCE_MEM | IORESOURCE_BUSY;
> +       int ret;
> +       unsigned long flags;
>         struct init_pgtable_data data;
>
>         data.info = info;
>         data.level4p = level4p;
>         flags = IORESOURCE_MEM | IORESOURCE_BUSY;
> -       return walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
> -                                  &data, mem_region_callback);
> +
> +       ret = walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
> +                                 &data, mem_region_callback);
> +       if (ret && ret != -EINVAL)
> +               return ret;
> +
> +       /* ACPI tables could be located in ACPI Non-volatile Storage region */
> +       ret = walk_iomem_res_desc(IORES_DESC_ACPI_NV_STORAGE, flags, 0, -1,
> +                                 &data, mem_region_callback);
> +       if (ret && ret != -EINVAL)
> +               return ret;
> +
> +       return 0;
>  }
>  #else
>  static int map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p) { return 0; }
> --
> 2.21.0
>

Hi, could you help test the tip branch with this applied? This should
fix all the issues, I can't find any other issues now. Thanks.


--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
