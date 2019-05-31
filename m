Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F8030BC6
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5byq+hW/iE7tuREk2KKMLllfc5ADvhHPxd0G/+nMnBQ=; b=UHcL1k6IFcUScB
	QTTXIES8RE+SYZZTiEcsK8SLTsUsZeNoRPvyIKu9act1l9xGZ/8LHuXcLtGB1x+nyJSZArKvqop44
	xhDSZ3nfnqxf+qLF8VAnVKLRI+KgomOxPg2lCzGn5wIS8FMrNDeDnEtflTnTkaGeDj7FOWTLtNBoY
	zB4+aAUD+mK13UkqT+AfEQ9/RzVJyrEcPPAHphWSBl24n7OW++G1mCSrg0HtADOWBs8Km3QYbvnDV
	yAe0ULcYb2niEVLjFVRZ1xnt7kAWNF9ux3vnSs/lIgek7Q8hBry5mtdGs2SV3Gq1MxZLjIwkXVOtF
	eG+WMKXmDsLLanX9y4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdzs-0003zt-Iq; Fri, 31 May 2019 09:38:48 +0000
Received: from mail-it1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdzp-0003yw-0r
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:38:46 +0000
Received: by mail-it1-f194.google.com with SMTP id h20so14663143itk.4
 for <kexec@lists.infradead.org>; Fri, 31 May 2019 02:38:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AWniAuaByR9wwPo8OpbfiN6LP6guy0TSvYrEyBA0goU=;
 b=HEnZIfeUC9sTUhLGwVJrIKZ+bro9hmUfaZaFWY9Ah4ObDIBi00EYgR8CX4vkXX0zod
 gAk0wIvIThCiBckZ55U1NiAyYUsLAbaSnLcgIk4shzpaYKykK6Bkl+aDMZ3SQoeMqtz5
 BQ0y4TQbrdEzvyWJk/8fb4TvUcObCKKBH5Nqqq4BBrhfN2IJFSzZBPQfPQI4t6Ccsnoa
 oov1wHf7LwbdDE4gQtnSWisMKqzCmLOXQTQ/gKMLxxg/eEHA/WRnh5vcF4FDO/Bgseus
 YYiauggVmenkEO5a5S8+vr9VUvBXl3QjGlJljyH3V0XJBDHhRkSgu6BS1TLPBGMaLWMR
 9M+g==
X-Gm-Message-State: APjAAAXoOBKwIPpZJRV4Z9qUSUjQ1+l6qiPL2v8aPhj2O16TgSvPQz1j
 nuTRF9mbsD6GwWy9Y8UeWlBXvY1edpMxxknDVhdOPQ==
X-Google-Smtp-Source: APXvYqzKGh1fdE12GcpdaQJIdNVrRKaMXjz8xKUkB3IBVhYZtP9iioLrWRDOZwogODq0eJ1eL7EZrGgnmw6wC8C0akM=
X-Received: by 2002:a02:bb08:: with SMTP id y8mr1110523jan.51.1559295523370;
 Fri, 31 May 2019 02:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <20181123092633.16111-1-kasong@redhat.com>
 <20190531092935.sfpbxeu7uquogtd5@verge.net.au>
In-Reply-To: <20190531092935.sfpbxeu7uquogtd5@verge.net.au>
From: Kairui Song <kasong@redhat.com>
Date: Fri, 31 May 2019 17:38:32 +0800
Message-ID: <CACPcB9fCDnvB-bQ0NngStydh4UBy0cV7CYA1QPj1+Apea1sSwQ@mail.gmail.com>
Subject: Re: [PATCH] x86: Handle 64bit framebuffer memory address properly
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_023845_057172_22717FFB 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 5:29 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Fri, Nov 23, 2018 at 05:26:33PM +0800, Kairui Song wrote:
> > In a EFI system, the frame buffer address is 64bit, so currently
> > if the address is beyound 4G, kexec will set wrong address due to
> > truncate.
> >
> > Linux kernel commit ae2ee627dc87 ('efifb: Add support for 64-bit
> > frame buffer addresses') added support for 64bit frame buffer
> > address, an 'ext_lfb_base' field is added as the upper 32-bits of
> > the frame buffer, and introduced a new capability flag
> > 'VIDEO_TYPE_CAPABILITY_64BIT_BASE' to indicate if the extend field is
> > used.
> >
> > This patch adopts this change, set proper extent address and capability
> > flag when the address is beyound 4G.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
>
> Sorry for letting this slip through the cracks.
> Please let me know if this is still relevant.

Hi Simon, I checked kexec-tools repo and this patch is merged already,
maybe you replied the wrong mail?


--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
