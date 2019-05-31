Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7452030B5B
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D9NY/r5xbL8evnXnA4IZM45SUYZgj2RqKKdKfV2zZ8=; b=FQMWQqVnGFBEcc
	c3oFjM2tsDDbjPZaqSdxOu51hLM+Rjon2ZKyEBk0m6fU+yvfvIC1CkExOqzYRNepr6ZR1kXYby87k
	mNyud/3qycoBTsMPObxo3PnK0GU5tpgPNXInsHYPw/cDyN4zQKOPtBrvdgquXSlAvcuQyaPGMJize
	u24mJlAbGsERLhuDVULb5AjavIuUMtFFFJoCtZ/uYdYvKqNQEJsfmypFXnPkli6W3suovuKbwQsUi
	AoKqcB2RXWK41nW6+QqV/sLgnMQK6Qoy0Y5eLy/7HwWAj3N2BfvP3U7Qy0UC2ZfCR7QTCbZrudGmh
	6R4x7OGn8ElIg6boH3OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdkd-0004xd-C5; Fri, 31 May 2019 09:23:03 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdka-0004xJ-2a
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:23:01 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id C8EAE25AE77;
 Fri, 31 May 2019 19:22:58 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id BE9E09401DB; Fri, 31 May 2019 11:22:56 +0200 (CEST)
Date: Fri, 31 May 2019 11:22:56 +0200
From: Simon Horman <horms@verge.net.au>
To: Varad Gautam <vrd@amazon.de>
Subject: Re: [PATCH 3/3] x86: Support multiboot2 images
Message-ID: <20190531092256.5kvnkfhpa6oweewi@verge.net.au>
References: <1558423948-24583-1-git-send-email-vrd@amazon.de>
 <1558423948-24583-3-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558423948-24583-3-git-send-email-vrd@amazon.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022300_270076_E1AF4DE4 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: kexec@lists.infradead.org, David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 09:32:28AM +0200, Varad Gautam wrote:
> Add a new type `multiboot2-x86` that allows loading multiboot2 images
> within the relocation range specified in the image header. The image is
> always placed at the lowest available address, regardless of the
> preference information.
> 
> Also make multiboot2 take priority over multiboot if the -t flag isn't
> specified.
> 
> Signed-off-by: Varad Gautam <vrd@amazon.de>
> ---
>  doc/multiboot2.html              | 2716 ++++++++++++++++++++++++++++++++++++++

multiboot2.html does not appear to be licenced as GPLv2.
Is it possible to provide a link to this document
rather than the text itself?

>  include/x86/multiboot2.h         |  416 ++++++
>  kexec/arch/i386/kexec-mb2-x86.c  |  543 ++++++++
>  kexec/arch/i386/kexec-x86.c      |    2 +
>  kexec/arch/x86_64/Makefile       |    1 +
>  kexec/arch/x86_64/kexec-x86_64.c |    2 +
>  kexec/arch/x86_64/kexec-x86_64.h |    5 +
>  kexec/kexec.8                    |   24 +
>  8 files changed, 3709 insertions(+)
>  create mode 100644 doc/multiboot2.html
>  create mode 100644 include/x86/multiboot2.h
>  create mode 100644 kexec/arch/i386/kexec-mb2-x86.c

...

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
