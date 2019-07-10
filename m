Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B28464847
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 16:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOD6h8AHYgxlXdPP/2IIiEPxdmxteOlI4GwW0eY53N8=; b=bVDfgjQMSqQ9PI
	iMw0J3Rzoa1DbFTLOnlmF3NV5s+W171StiaHNon1ZXNchIddidJHG2Lg2hM/3O96FXCoeC/lnonLt
	R3zT0KXJe2b17Y2cFe8wvsn2DGhqQHHyk9Sq9+kknxHoGDPXdwRrBFq7Yk7WeRMVRVFs7U67avt7b
	4+bDPcm6PXfX/ggqTp0YdAQenspGxnMtLA5bULtVF2xeRjjsULBHdk4wS+UruYTJ7x4Jy7CMjDLG1
	50MYzY17QBNdPnIpiD5N9j62lS4ro2X/TBl1fRUMPSW+4O+LqZw8Vr/ADT2enH79pT0CFy6r2C7M+
	btEFdh847sOoma63AN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDWw-0005km-1W; Wed, 10 Jul 2019 14:25:10 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDWq-0004zN-Ci
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 14:25:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Type:MIME-Version:References
 :Message-ID:Subject:Cc:To:From:Date;
 bh=AF9TbuWmrW1CqKM/1yWsmA/ovj9LMicONWkNU/F2Xb8=; b=bkZVcuulQ9ra/XYBykfCSpCnRz
 ScftP6j7275ilEmMjM11dHEXGYLMIP7gmTnqtyIpLuKQmAC/Zy37Ntsl9r64/T7SV3KmeoSnsTdlY
 e/fV+jwwE1KQdaaHWrdpDdhWGoegFiVHUBJC1ubJyq059QRR0D76MF6/EFaHQxbcAvmI=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hlDWn-0004O1-5C; Wed, 10 Jul 2019 16:25:01 +0200
Date: Wed, 10 Jul 2019 16:24:59 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH v2 1/7] kexec: add KEXEC_ELF
Message-ID: <20190710142459.GA31679@t470p.stackframe.org>
References: <20190709194328.16991-1-svens@stackframe.org>
 <20190709194328.16991-2-svens@stackframe.org>
 <64306f6c-0a0d-a6ea-537c-5e72deaba1c0@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64306f6c-0a0d-a6ea-537c-5e72deaba1c0@c-s.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_072504_591124_AB20C9A5 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org, deller@gmx.de, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Christophe,

On Wed, Jul 10, 2019 at 01:19:13PM +0000, Christophe Leroy wrote:
> Hi Sven,
> 
> On 07/09/2019 07:43 PM, Sven Schnelle wrote:
> > Right now powerpc provides an implementation to read elf files
> > with the kexec_file() syscall. Make that available as a public
> > kexec interface so it can be re-used on other architectures.
> > 
> > Signed-off-by: Sven Schnelle <svens@stackframe.org>
> > ---
> >   arch/Kconfig                       |   3 +
> >   arch/powerpc/Kconfig               |   1 +
> >   arch/powerpc/kernel/kexec_elf_64.c | 551 +----------------------------
> >   include/linux/kexec.h              |  24 ++
> >   kernel/Makefile                    |   1 +
> >   kernel/kexec_elf.c                 | 537 ++++++++++++++++++++++++++++
> >   6 files changed, 576 insertions(+), 541 deletions(-)
> >   create mode 100644 kernel/kexec_elf.c
> 
> Why are you persisting at not using -C when creating your patch ? Do you
> want to hide the changes you did while copying
> arch/powerpc/kernel/kexec_elf_64.c to kernel/kexec_elf.c ?
> Or you want to make life harder for the reviewers ?

Sorry, never used -C before. I used:

git send-email --annotate -v2 -7 --to kexec@lists.infradead.org --cc deller@gmx.de,linuxppc-dev@lists.ozlabs.org -v --format-patch -C -M

However, it looks like it only works when started this way:

git send-email --format-patch -M -C --annotate -v2 -7 --to kexec@lists.infradead.org --cc deller@gmx.de,linuxppc-dev@lists.ozlabs.org -v

I'll resend v2.

Best Regards,
Sven

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
