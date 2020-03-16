Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9A218636D
	for <lists+kexec@lfdr.de>; Mon, 16 Mar 2020 03:50:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnPlpO76jJmfDrakUm2XYWtv2zM1lRxNxcog7bVUePI=; b=Ohf301IqykeH1d
	9hnct3IIJ02f7E0/l18NOBEpcA0GVkyFf4jfCWsPx1+qrQt3DcMzyrxVp2kbjB2phdehRlt88PokW
	8rOQnH5Gjr7sS1INuq56L5bt2m3xPglSMXjSDCs1U/v7L1eLxSwTb5Ynga9X3+DP3H5FmviK1aVtW
	FOWl9p+XvlkBzIzU7/p17hG97jd5gZpD5J4n4CSCBwzXv98DyGh7ofSEV9/8ytPKHHjobpMAV/2B3
	IR0rEhde1AXMTd04PXY6Hxe8kfn6WCROPGfZiInDxNoLSBwdyG1zl4EN8mvYO7ag62j68Pp114VNj
	Y9uxJOShOazri+Vd+/vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfpE-0003bl-Gp; Mon, 16 Mar 2020 02:49:56 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfp8-0003bF-4W
 for kexec@lists.infradead.org; Mon, 16 Mar 2020 02:49:51 +0000
Received: by mail-io1-xd43.google.com with SMTP id m25so15614629ioo.8
 for <kexec@lists.infradead.org>; Sun, 15 Mar 2020 19:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=29bgXa0W0LHZLame8RB7q1j4LBSHlo6zwi2D8RNtALk=;
 b=ZtU1JIgMSz4DH1u9R93WTWltmr5dyzP0EXxD/vmtXqEotVUyYlxjNt8YZ/gcsGorSj
 wdpZS09Lc3la4hSMFhGXw7b2l54tsDMzc+5z5XLGKj1txjqkGzZEri3N0BgiG0PEPjoz
 Dh5va+oqwo9LgrzdKYmtv4hgKI+5iA/ISBH1RvpOHGeIaxPSJ1p/wt98sSzwicdVOv2g
 JpSFPJas7mN4ST+1+NPrdCSsTQTKTmL7dbWrk5ZYjrYvAoIhYjaoQ8ejkO3YmyLl84Az
 jgYEaJfmXYISUh382txbDWoaOUPSEvj3725LDLSjse3aK6IWWr1enhmLIkPQOHyK0WbY
 Q98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=29bgXa0W0LHZLame8RB7q1j4LBSHlo6zwi2D8RNtALk=;
 b=WFe7edvprEL499BqtBuaON5oRIyoKU7W6A8qpbKXFLod3OyCOxKXMKILoluy8sAcRU
 RMqRXZKlxaCDGAUIq8J0AULMYzl9MK+lzU4+PsIA1Ro3IpULkRk5wT2kS4RVfHkgzs1b
 ZPkw9RietUfRppPIZqp0v7ZGWbQriQ2gPQTRAj4jKtQPatFluVIP0EMCedu3au8be2+x
 cQNhNeRjurwdALstg+p6WSG44qkLoP7wEiil/LcdNLKLld6pZjMK/z2fk48xGPZlI7KV
 CXL685w+S0GG/uS8rWKI85ihW3HS21IDsOWv0/lwv4XBjoi1NQ+Tz6LvpB0htVM8JWVR
 Typw==
X-Gm-Message-State: ANhLgQ1fQ7ip6IfZk4tF45888kZZxpKb0ODj2KuidmXhCMncHMZJCxVo
 QIDPVMgLA2lWKn3VNFKJ149AJLQ39HlFp3x2ow==
X-Google-Smtp-Source: ADFU+vv3kChg7yDdEFrfDKvKbYn45+E2M+OeRQEchoVQC0QNX/DMLW2TnpDXSBrEPDVTJBGVD74rCJv1CKoz2OY+4bQ=
X-Received: by 2002:a5e:d512:: with SMTP id e18mr22490202iom.209.1584326988628; 
 Sun, 15 Mar 2020 19:49:48 -0700 (PDT)
MIME-Version: 1.0
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
 <CAOSf1CG5VPasqhuVDPnm58mjgGkN7isJt_UCwdb7pwAip8K2aQ@mail.gmail.com>
In-Reply-To: <CAOSf1CG5VPasqhuVDPnm58mjgGkN7isJt_UCwdb7pwAip8K2aQ@mail.gmail.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 16 Mar 2020 10:49:37 +0800
Message-ID: <CAFgQCTvVAwm9pzEPaxWwcWHu268R8+uVoUrh+KEshuVYN3Modg@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] pseries/scm: buffer pmem's bound addr in dt for
 kexec kernel
To: "Oliver O'Halloran" <oohall@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_194950_206471_7C49A785 
X-CRM114-Status: GOOD (  28.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
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

Appreciate for your kind review. And I have some comment as below.

On Fri, Mar 13, 2020 at 11:18 AM Oliver O'Halloran <oohall@gmail.com> wrote:
>
> On Wed, Mar 4, 2020 at 7:50 PM Pingfan Liu <kernelfans@gmail.com> wrote:
> >
> > At present, plpar_hcall(H_SCM_BIND_MEM, ...) takes a very long time, so
> > if dumping to fsdax, it will take a very long time.
> >
> > Take a closer look, during the papr_scm initialization, the only
> > configuration is through drc_pmem_bind()-> plpar_hcall(H_SCM_BIND_MEM,
> > ...), which helps to set up the bound address.
> >
> > On pseries, for kexec -l/-p kernel, there is no reset of hardware, and this
> > step can be stepped around to save times.  So the pmem bound address can be
> > passed to the 2nd kernel through a dynamic added property "bound-addr" in
> > dt node 'ibm,pmemory'.
> >
> > Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> > To: linuxppc-dev@lists.ozlabs.org
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Hari Bathini <hbathini@linux.ibm.com>
> > Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
> > Cc: Oliver O'Halloran <oohall@gmail.com>
> > Cc: Dan Williams <dan.j.williams@intel.com>
> > Cc: Andrew Donnellan <ajd@linux.ibm.com>
> > Cc: Christophe Leroy <christophe.leroy@c-s.fr>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Cc: kexec@lists.infradead.org
> > ---
> > note: This patch has not been tested since I can not get such a pseries with pmem.
> >       Please kindly to give some suggestion, thanks.
>
> There was some qemu patches to implement the Hcall interface floating
> around a while ago. I'm not sure they ever made it into upstream qemu
> though.
Unfortunately, it does not appear in latest qemu code. I think
probably virt-pmem has achieved the same feature.
>
> > ---
> >  arch/powerpc/platforms/pseries/of_helpers.c |  1 +
> >  arch/powerpc/platforms/pseries/papr_scm.c   | 33 ++++++++++++++++++++---------
> >  drivers/of/base.c                           |  1 +
> >  3 files changed, 25 insertions(+), 10 deletions(-)
> >
> > diff --git a/arch/powerpc/platforms/pseries/of_helpers.c b/arch/powerpc/platforms/pseries/of_helpers.c
> > index 1022e0f..2c7bab4 100644
> > --- a/arch/powerpc/platforms/pseries/of_helpers.c
> > +++ b/arch/powerpc/platforms/pseries/of_helpers.c
> > @@ -34,6 +34,7 @@ struct property *new_property(const char *name, const int length,
> >         kfree(new);
> >         return NULL;
> >  }
> > +EXPORT_SYMBOL(new_property);
> >
> >  /**
> >   * pseries_of_derive_parent - basically like dirname(1)
> > diff --git a/arch/powerpc/platforms/pseries/papr_scm.c b/arch/powerpc/platforms/pseries/papr_scm.c
> > index 0b4467e..54ae903 100644
> > --- a/arch/powerpc/platforms/pseries/papr_scm.c
> > +++ b/arch/powerpc/platforms/pseries/papr_scm.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/delay.h>
> >
> >  #include <asm/plpar_wrappers.h>
> > +#include "of_helpers.h"
> >
> >  #define BIND_ANY_ADDR (~0ul)
> >
> > @@ -383,7 +384,7 @@ static int papr_scm_probe(struct platform_device *pdev)
> >  {
> >         struct device_node *dn = pdev->dev.of_node;
> >         u32 drc_index, metadata_size;
> > -       u64 blocks, block_size;
> > +       u64 blocks, block_size, bound_addr = 0;
> >         struct papr_scm_priv *p;
> >         const char *uuid_str;
> >         u64 uuid[2];
> > @@ -440,17 +441,29 @@ static int papr_scm_probe(struct platform_device *pdev)
> >         p->metadata_size = metadata_size;
> >         p->pdev = pdev;
> >
> > -       /* request the hypervisor to bind this region to somewhere in memory */
> > -       rc = drc_pmem_bind(p);
> > +       of_property_read_u64(dn, "bound-addr", &bound_addr);
> > +       if (bound_addr) {
> > +               p->bound_addr = bound_addr;
> > +       } else {
> > +               struct property *property;
> > +               u64 big;
> >
> > -       /* If phyp says drc memory still bound then force unbound and retry */
> > -       if (rc == H_OVERLAP)
> > -               rc = drc_pmem_query_n_bind(p);
> > +               /* request the hypervisor to bind this region to somewhere in memory */
> > +               rc = drc_pmem_bind(p);
> >
> > -       if (rc != H_SUCCESS) {
> > -               dev_err(&p->pdev->dev, "bind err: %d\n", rc);
> > -               rc = -ENXIO;
> > -               goto err;
> > +               /* If phyp says drc memory still bound then force unbound and retry */
> > +               if (rc == H_OVERLAP)
> > +                       rc = drc_pmem_query_n_bind(p);
> > +
> > +               if (rc != H_SUCCESS) {
> > +                       dev_err(&p->pdev->dev, "bind err: %d\n", rc);
> > +                       rc = -ENXIO;
> > +                       goto err;
> > +               }
> > +               big = cpu_to_be64(p->bound_addr);
> > +               property = new_property("bound-addr", sizeof(u64), (const unsigned char *)&big,
> > +                       NULL);
>
> That should probably be "linux,bound-addr"
OK, thanks for suggestion.
>
> The other thing that stands out to me is that you aren't removing the
Yes, you are right. I will fix it in V2.
> property when the region is unbound. As a general rule I'd prefer we
> didn't hack the DT at runtime, but if we are going to then we should
> make sure we're not putting anything wrong in there.
Actually, the dynamically building of DT is widely used by "kexec -l".

The pre-condition for the hacked method is that the bound pmem-addr
will not change. And on pseries, during kexec -l/-p, a machine reset
will not be invoked, so the bound address should be changed.

Thanks,
Pingfan
[...]

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
