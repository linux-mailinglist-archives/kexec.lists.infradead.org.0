Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93EE183F6F
	for <lists+kexec@lfdr.de>; Fri, 13 Mar 2020 04:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u25gTSSHQdjfTNaxdHfV14aoLvETNO53jU2Qa1q7S4g=; b=Zqju9/Rfy1/45P
	8ZhmcsBZQMPjvKp6xWi2enhbF/QeOPZJYBKUl7vibink5l4NXNw1R0swJL1hLWKttQPkt4u6lCYb5
	SptDaqY8W3268POAM7TmyubBXSG1cmlpOlbDJISkCh/DbhBDPvQMZMjX5TZsI1+E8wYW7EhtVgpeC
	U3iGw3ZZd4/3nh7JN1pS1oKDlJ3PIkoP7v85ZALzrJ3qXkOqPIYydB5pUBMOUXZ/B1SXydydvI9Q1
	5LKQ5aXsMURP/EFOKj9RGkNSp3jrQRIpHYjuHBoIDhnev37WYYvxs6fi9zmPNvpEyF8lZ+zfCEakf
	75R3DHTc10TAxWFJdV5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCapt-0008Op-A8; Fri, 13 Mar 2020 03:18:09 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCapm-0008OA-IX
 for kexec@lists.infradead.org; Fri, 13 Mar 2020 03:18:04 +0000
Received: by mail-il1-x141.google.com with SMTP id j69so7559497ila.11
 for <kexec@lists.infradead.org>; Thu, 12 Mar 2020 20:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UlfvY0oGVsaUk0r5EBLUStFO0dCFKba6JHfCchjXVtE=;
 b=iisI5pTQW0+U0Dchgm8muuNPo9HLPSBVFOfNvs4A7P51wP2lZCRekLve17gD8pKjOe
 TDPLrzjoU7K/ATEYpeIMaL2cOLzISx2uRxCRBJCx+uM9MOGAioPqxFEQkb6CVrbf5Mi5
 SLyfHBfD1rIEkDas5Dr8ux00EUOALp7X+KN7zZM/aJo3Se4KSeT76AlFp3PJNil5uYZH
 nPrxyjeGn3tpZcclxkRYJOIPgYGz5yvNPxlxHK0rX59Q1ZF54HUETV3cPH9cXqqFSzAf
 c4M0Y/ydqSKgHnz0mbUR+8XxgI855O+3feTzx0+Mj30t/VvM9yE4KkEmCFoLfRRB4jS+
 0xPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UlfvY0oGVsaUk0r5EBLUStFO0dCFKba6JHfCchjXVtE=;
 b=jN7T8zehVHsbL89N9uju3dIneNHwlFY8/YfOfH3EYbFr4ErlgC+8tXev2oufh/rxwL
 UwP3K/BDWDmFV/5jeXHTRotUTGEXQHDCF873OrPyd7C/wOayCoUz/LhFNINmV72gmX5b
 YM1lC8QQKffxG1vq/O1J0qRfwXv3c4krAPHc2/QnkTXBUUvPCRIIcrRxRInUcf1yEEJA
 aMcnBmLY1sarc1pRFYUgJ7rm3y6rgPYSqvbO5g6AVEpPRrq6E4dBJcoF946bPO2Et3DA
 akm7p20ibY6kWQD6Yl3w6/QQQ/UWNsC4zAfqBuyhm3yxbRqG8Ygm2MKG24+NPvcVXgy1
 ob2Q==
X-Gm-Message-State: ANhLgQ0IWFe5/joZ1UhgCrA36vH7MwY6ywSofnNoIpctbhcpQ4gfX5S2
 LKowAwJSaVxBVVqZQv6rQ1wbsTvRk4pqvME4r6w=
X-Google-Smtp-Source: ADFU+vu/npMPeslf7IqYZQXqioZc1+z6k84PvtCoH35o2Iq7HgWM6hguSXIy1iepg5uWIADnaeAPoTRya/NpmK5XL2c=
X-Received: by 2002:a92:5c5c:: with SMTP id q89mr11620410ilb.195.1584069481227; 
 Thu, 12 Mar 2020 20:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
In-Reply-To: <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
From: "Oliver O'Halloran" <oohall@gmail.com>
Date: Fri, 13 Mar 2020 14:17:50 +1100
Message-ID: <CAOSf1CG5VPasqhuVDPnm58mjgGkN7isJt_UCwdb7pwAip8K2aQ@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] pseries/scm: buffer pmem's bound addr in dt for
 kexec kernel
To: Pingfan Liu <kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_201802_672415_36286A13 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oohall[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Donnellan <ajd@linux.ibm.com>, Frank Rowand <frowand.list@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, kexec@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 7:50 PM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> At present, plpar_hcall(H_SCM_BIND_MEM, ...) takes a very long time, so
> if dumping to fsdax, it will take a very long time.
>
> Take a closer look, during the papr_scm initialization, the only
> configuration is through drc_pmem_bind()-> plpar_hcall(H_SCM_BIND_MEM,
> ...), which helps to set up the bound address.
>
> On pseries, for kexec -l/-p kernel, there is no reset of hardware, and this
> step can be stepped around to save times.  So the pmem bound address can be
> passed to the 2nd kernel through a dynamic added property "bound-addr" in
> dt node 'ibm,pmemory'.
>
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> To: linuxppc-dev@lists.ozlabs.org
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Hari Bathini <hbathini@linux.ibm.com>
> Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
> Cc: Oliver O'Halloran <oohall@gmail.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Andrew Donnellan <ajd@linux.ibm.com>
> Cc: Christophe Leroy <christophe.leroy@c-s.fr>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: kexec@lists.infradead.org
> ---
> note: This patch has not been tested since I can not get such a pseries with pmem.
>       Please kindly to give some suggestion, thanks.

There was some qemu patches to implement the Hcall interface floating
around a while ago. I'm not sure they ever made it into upstream qemu
though.

> ---
>  arch/powerpc/platforms/pseries/of_helpers.c |  1 +
>  arch/powerpc/platforms/pseries/papr_scm.c   | 33 ++++++++++++++++++++---------
>  drivers/of/base.c                           |  1 +
>  3 files changed, 25 insertions(+), 10 deletions(-)
>
> diff --git a/arch/powerpc/platforms/pseries/of_helpers.c b/arch/powerpc/platforms/pseries/of_helpers.c
> index 1022e0f..2c7bab4 100644
> --- a/arch/powerpc/platforms/pseries/of_helpers.c
> +++ b/arch/powerpc/platforms/pseries/of_helpers.c
> @@ -34,6 +34,7 @@ struct property *new_property(const char *name, const int length,
>         kfree(new);
>         return NULL;
>  }
> +EXPORT_SYMBOL(new_property);
>
>  /**
>   * pseries_of_derive_parent - basically like dirname(1)
> diff --git a/arch/powerpc/platforms/pseries/papr_scm.c b/arch/powerpc/platforms/pseries/papr_scm.c
> index 0b4467e..54ae903 100644
> --- a/arch/powerpc/platforms/pseries/papr_scm.c
> +++ b/arch/powerpc/platforms/pseries/papr_scm.c
> @@ -14,6 +14,7 @@
>  #include <linux/delay.h>
>
>  #include <asm/plpar_wrappers.h>
> +#include "of_helpers.h"
>
>  #define BIND_ANY_ADDR (~0ul)
>
> @@ -383,7 +384,7 @@ static int papr_scm_probe(struct platform_device *pdev)
>  {
>         struct device_node *dn = pdev->dev.of_node;
>         u32 drc_index, metadata_size;
> -       u64 blocks, block_size;
> +       u64 blocks, block_size, bound_addr = 0;
>         struct papr_scm_priv *p;
>         const char *uuid_str;
>         u64 uuid[2];
> @@ -440,17 +441,29 @@ static int papr_scm_probe(struct platform_device *pdev)
>         p->metadata_size = metadata_size;
>         p->pdev = pdev;
>
> -       /* request the hypervisor to bind this region to somewhere in memory */
> -       rc = drc_pmem_bind(p);
> +       of_property_read_u64(dn, "bound-addr", &bound_addr);
> +       if (bound_addr) {
> +               p->bound_addr = bound_addr;
> +       } else {
> +               struct property *property;
> +               u64 big;
>
> -       /* If phyp says drc memory still bound then force unbound and retry */
> -       if (rc == H_OVERLAP)
> -               rc = drc_pmem_query_n_bind(p);
> +               /* request the hypervisor to bind this region to somewhere in memory */
> +               rc = drc_pmem_bind(p);
>
> -       if (rc != H_SUCCESS) {
> -               dev_err(&p->pdev->dev, "bind err: %d\n", rc);
> -               rc = -ENXIO;
> -               goto err;
> +               /* If phyp says drc memory still bound then force unbound and retry */
> +               if (rc == H_OVERLAP)
> +                       rc = drc_pmem_query_n_bind(p);
> +
> +               if (rc != H_SUCCESS) {
> +                       dev_err(&p->pdev->dev, "bind err: %d\n", rc);
> +                       rc = -ENXIO;
> +                       goto err;
> +               }
> +               big = cpu_to_be64(p->bound_addr);
> +               property = new_property("bound-addr", sizeof(u64), (const unsigned char *)&big,
> +                       NULL);

That should probably be "linux,bound-addr"

The other thing that stands out to me is that you aren't removing the
property when the region is unbound. As a general rule I'd prefer we
didn't hack the DT at runtime, but if we are going to then we should
make sure we're not putting anything wrong in there.

> +               of_add_property(dn, property);
>         }
>
>         /* setup the resource for the newly bound range */
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index ae03b12..602d2a9 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1817,6 +1817,7 @@ int of_add_property(struct device_node *np, struct property *prop)
>
>         return rc;
>  }
> +EXPORT_SYMBOL_GPL(of_add_property);
>
>  int __of_remove_property(struct device_node *np, struct property *prop)
>  {
> --
> 2.7.5
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
