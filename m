Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1750618669E
	for <lists+kexec@lfdr.de>; Mon, 16 Mar 2020 09:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbbuoLSQYJIUl7e0GZqqogDmq6RF11BMJUV2S8aokBw=; b=blTR86YY1qOpKP
	xNRsxafOkujS5Ag9Qe8/lveKWoNnR1riJgl+ykVKWAGtQWwG3WacJ0Xq1ZYGMUk9iEb+7L2E3uorh
	oyI2l2Hh4din7d66/64sWHlC3A04FUcS8EUCPtrHbwD3MQhGbemDppAf9ni5kfQ8hX38EBwIECCn3
	Q6MR6lEhpO2CCHM69iKSBVN8l73Ox3o+lAQNK8tASL1jLuFV+mEg9n9NA0MJP4jHFdCHoZya/Ltxk
	w0MoauzZjzdEmFTAxq/PUBUowQxFEJG2misNQjwS49bFOIKj/xKyUQJK+kIQwqF/OslO3B1IEsHV6
	QXhzZVUOjGC1Co/g3tEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlGI-0001qE-34; Mon, 16 Mar 2020 08:38:14 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlGF-0001pl-4N
 for kexec@lists.infradead.org; Mon, 16 Mar 2020 08:38:12 +0000
Received: by mail-qk1-x741.google.com with SMTP id f3so24694300qkh.1
 for <kexec@lists.infradead.org>; Mon, 16 Mar 2020 01:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GBIKtQ/ulbcDtdh6PxMvU1viERIQc6Vgg9GWcGvGlv0=;
 b=ZR73x073nxRSldQepsy/4rpi77Odw7Ua1MPLeNAObTcsBO4SekYhz5/bcaeG8WfZJ0
 +LpxDDWOqJjQTlhPmolTcBnatJ2Vn7i84gAiyGnXMd6x+uW2eTTiBvE967lhoezcSuny
 i+/Ekzakk1Lc9dS+W1Vb490tA/VbTPYFG7W5yRLku8cwKpsDa2gcVvaopKThahDncPE6
 +LTd37NRlPNFzUrlRk3JbU5jdX5x6cSg9wlQbl7+Xwmg1FfHtkXLXIEb02e22tvMh6Tv
 g10fUXAtqI+HdgK2uH8ECEQ5emDaJ3quLBLnl5teK3ycbC2Ha9sAI1/4v7XRJfe+Q0N7
 YqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GBIKtQ/ulbcDtdh6PxMvU1viERIQc6Vgg9GWcGvGlv0=;
 b=KOvqL5cK+tPlBlQKJGzsV3dQ4K9aOw0cjYcJinUv5ohHzI1ea9T5zmwB6UjWvP0bJV
 Ke0xtxkIoXw/67xp13NDMpLTEs83fOToFB6rYPBvktBOrkW8N4aK/LHpAe+94GsZzWqn
 pqozSHvUJ0K0gnDPTTeUJvlMV9u6loa3FalkV+04fnzSyG3gS6gdTJjEKIringUl0pT4
 RUUmjuPzHtmbUKtsrH+4uLykKH9FvJBIRTUpqYoCe/U7mtcR2ls2Do6VsyOvt2YEe23A
 sIjIpdD9PEMxgrtg9+7iAyIa+uC0R5VkGcjV+M5jrIz89npFG/SBmII1OE8IL5i+h/SM
 8UNw==
X-Gm-Message-State: ANhLgQ2te50mvc3JU6NLbHpFeYFjJEfrVkgUV+Qlvt0ccd6jK2j+fZAz
 dZKOMVftMcMCHYF4KiD1hw4NWL1kj/OUnmTOHA==
X-Google-Smtp-Source: ADFU+vv+UzMC/vzWOR9wQVlK0+UMo9V0HpGdOJbXuEB8HSTCb40fYMnTh0rKQzoOCNyIsWrTvP0cDK7yOKJIP4nWAVw=
X-Received: by 2002:a37:404f:: with SMTP id n76mr283707qka.442.1584347889961; 
 Mon, 16 Mar 2020 01:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
 <41abb04e-d481-040f-827b-c04ad7d2abb9@linux.ibm.com>
In-Reply-To: <41abb04e-d481-040f-827b-c04ad7d2abb9@linux.ibm.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 16 Mar 2020 16:37:58 +0800
Message-ID: <CAFgQCTvsKaP34_v-P0x_RNDZ2Jne82DMS33LpC5EE819EjhJHg@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] pseries/scm: buffer pmem's bound addr in dt for
 kexec kernel
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_013811_199115_898670DA 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rob Herring <robh+dt@kernel.org>, Oliver O'Halloran <oohall@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 10:53 AM Aneesh Kumar K.V
<aneesh.kumar@linux.ibm.com> wrote:
>
> On 3/4/20 2:17 PM, Pingfan Liu wrote:
> > At present, plpar_hcall(H_SCM_BIND_MEM, ...) takes a very long time, so
> > if dumping to fsdax, it will take a very long time.
> >
>
>
> that should be fixed by
>
> faa6d21153fd11e139dd880044521389b34a24f2
> Author:       Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
> AuthorDate:   Tue Sep 3 18:04:52 2019 +0530
> Commit:       Michael Ellerman <mpe@ellerman.id.au>
> CommitDate:   Wed Sep 25 08:32:59 2019 +1000
>
> powerpc/nvdimm: use H_SCM_QUERY hcall on H_OVERLAP error
>
> Right now we force an unbind of SCM memory at drcindex on H_OVERLAP error.
> This really slows down operations like kexec where we get the H_OVERLAP
> error because we don't go through a full hypervisor re init.
>
> H_OVERLAP error for a H_SCM_BIND_MEM hcall indicates that SCM memory at
> drc index is already bound. Since we don't specify a logical memory
> address for bind hcall, we can use the H_SCM_QUERY hcall to query
> the already bound logical address.
Good to know it.

Thanks,
Pingfan
>
>
>
>
> > Take a closer look, during the papr_scm initialization, the only
> > configuration is through drc_pmem_bind()-> plpar_hcall(H_SCM_BIND_MEM,
> > ...), which helps to set up the bound address.
> >
> > On pseries, for kexec -l/-p kernel, there is no reset of hardware, and this
> > step can be stepped around to save times.  So the pmem bound address can be
> > passed to the 2nd kernel through a dynamic added property "bound-addr" in
> > dt node 'ibm,pmemory'.
> >
>
> -aneesh
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
