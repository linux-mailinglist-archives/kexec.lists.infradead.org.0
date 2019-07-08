Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B67627AD
	for <lists+kexec@lfdr.de>; Mon,  8 Jul 2019 19:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAaFcuIbqqU2ofjGnKhrnp3onZzlPOg7z5RquHbBAt8=; b=QVhF9JdKF1m8mb
	ymI4VZIr3oiHP8YR9p05gXtw2O9uH7xgazatswCSzR4T4iVikIZ88ww8D4BAqEI/J1r7XPLV1uVu6
	GexSpr+shP6Of9BrnwHxQRp4fbKmjOrToTFohL3hbPXC7vnwI94422Pd1oacYaXRXU9RP9eQh03r4
	Gjoum63wU4TqXGMkvBY63AeHSFqAJzRClMQhHhTrlM3ShxeFVCHYGiD+x4cae6kmFY9R1w7PvJ3vr
	aGEznmrEoMH8g5KAvt9WzfF3HAXUiCYVjkR9rOxldiT7LH+4VmfzPP29SLtWE/7UgXl5s2vcWpTPT
	MN2NJNSIU/FOPZIlpXKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXnr-0003jz-Hj; Mon, 08 Jul 2019 17:51:51 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXnm-0003im-LT
 for kexec@lists.infradead.org; Mon, 08 Jul 2019 17:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Type:MIME-Version:References
 :Message-ID:Subject:Cc:To:From:Date;
 bh=kBHi8AK8xJRxLevoFHJtFm5kgrynv2XaZVmm/hsbrWU=; b=SMv5qvh1GkD/fjVjTTT/eKKT6h
 X0w2xVspnXsCfwVIaUoODlVfjR/cHymichkQeMzH/FAKphiG5oS0SqtbxevoggIYX45AfLT+Xr/uF
 IMpTKNhdmcOTxM8ndpL4x71Hk3mJfKaxgtUCPkPlXc2MctjWLsz3ljWjs943e0cCQDMU=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hkXni-0002H5-S0; Mon, 08 Jul 2019 19:51:42 +0200
Date: Mon, 8 Jul 2019 19:51:39 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH using git format-patch -C] kexec: add generic support for
 elf kernel images
Message-ID: <20190708175139.GA11402@t470p.stackframe.org>
References: <20190708100624.EBCDF68DB2@pc17473vm.idsi0.si.c-s.fr>
 <e016c0bb-c857-b78c-a159-120e42d0db03@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e016c0bb-c857-b78c-a159-120e42d0db03@c-s.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_105146_854264_355D07F4 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Jul 08, 2019 at 12:40:52PM +0200, Christophe Leroy wrote:
> > From: Sven Schnelle <svens@stackframe.org>
> 
> Please describe you patch.
> 
> All the changes you are doing to the ppc64 version in order to make it
> generic should be described.
> 
> Those changes are also maybe worth splitting the patch in several parts,
> either preparing the ppc64 for generic then moving to kernel/kexec_elf.c or
> moving to kernel/kexec_elf.c without modifications, then modifying it to
> make it generic.
> 
> Note that your patch only applies on Linux 5.1, it doesn't apply on
> powerpc/next.
> 
> I think it also be worth taking the opportunity to fix the sparse warnings,
> see https://patchwork.ozlabs.org/patch/1128720/
> 
> checkpatch comments should also be fixed, see https://openpower.xyz/job/snowpatch/job/snowpatch-linux-checkpatch/8044//artifact/linux/checkpatch.log

Actually this patch shouldn't have been sent out, that was my fault. Appologies
for that. Thanks for your review, i will split up the patch and resent it.

Regards
Sven

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
