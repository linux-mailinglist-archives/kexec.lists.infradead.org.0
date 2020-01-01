Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6712512DDFB
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 07:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFk/7ANsGd2XI60v5/5cRpxwNCEN0Fq6pVE8L0SVp6c=; b=hzm1b/H+MyYBFQ
	wCDHavV/icMbpeLf5tAgKoioWCk5/nzVgBnj5S0zufIaaboSHp3dU7KV3DSLu/3xDI8E0Ryi9XFjQ
	S066cdN2UFG7oishPZkesAPInrK8Ex6w5V/nAr/VHwaWftlkmOv6If2wuib8tFM0n9bOxH/BHuoWh
	S+ZddKyRQhCuntiWPgJhfY9wgLVc76omoUJ7gDtsZw55sTwSgTUNPKROEM+q2e/v0s0PJJK6Gxgbo
	KK38gBlJcNvHvPcZAr1Wo75TSqnZ9V7QeBADUEVa72Cx1kUAoPin+ObLwY3wLvW+lCP2Q4rXhoY0b
	PmzQUpLV7CGvJUlyzTRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imXNT-0002Of-9z; Wed, 01 Jan 2020 06:21:07 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imXNQ-0002OB-Ao
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 06:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577859661;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZkJ1mIbTrrBOlKZUoQPdf32Q2bHvXxd3EaQrbVcK/wk=;
 b=iTxFxxEQpwfeK+jlI/ffkWJPeFUzZR1kl4eY0EEdixb16E18tl/+hCS7Wk94zJ3G5+9+Of
 iXIediHt2niqQBcQ+OfCU+uH/ZtXBPKbN9leDmQMtH6mhnqVtq/TV3mpytb3GWZv/o/60T
 wtOjos1GH8DHY/qimsCycErt/3x2QBM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-FPJNVcs3Ocm2QR97esNbTQ-1; Wed, 01 Jan 2020 01:20:58 -0500
X-MC-Unique: FPJNVcs3Ocm2QR97esNbTQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36F75185432D;
 Wed,  1 Jan 2020 06:20:56 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-60.pek2.redhat.com
 [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BE2A5D9E2;
 Wed,  1 Jan 2020 06:20:51 +0000 (UTC)
Date: Wed, 1 Jan 2020 14:20:47 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v2 4/4] efi: Fix handling of multiple efi_fake_mem= entries
Message-ID: <20200101062047.GA16393@dhcp-128-65.nay.redhat.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200101045141.GA15155@dhcp-128-65.nay.redhat.com>
 <CAPcyv4hSB9B5tiKVwtNOgDS6KS2Pj6f962OPBZVZpPjrBt6Z8A@mail.gmail.com>
 <20200101061505.GA15717@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200101061505.GA15717@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_222104_446984_25AFBC74 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> > Does kexec preserve iomem? I.e. as long as the initial translation of
> > efi entries to e820, and resulting resource tree, is preserved by
> > successive kexec cycles then I think we're ok.
> 
> It will not preserve them automatically, but that can be fixed if
> needed.
> 
> There are two places:
> 1. the in kernel loader, we can do similar with below commit (for Soft
> Reseved instead):
> commit 980621daf368f2b9aa69c7ea01baa654edb7577b
> Author: Lianbo Jiang <lijiang@redhat.com>
> Date:   Tue Apr 23 09:30:07 2019 +0800
> 
>     x86/crash: Add e820 reserved ranges to kdump kernel's e820 table

Oops, that is for kdump only, for kexec, should update the kexec e820
table.  But before doing that we need first to see if this is necessary. 

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
