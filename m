Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454B01F336E
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 07:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:References:In-Reply-To:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BtoEqbeBblWKtZAYD+6DQkLqMWOrWo8YE8ejvfQJg+8=; b=Ad1lKfDFPoRtBvqM2dk7hH80u9
	ncc+TtCIZv+IEohF7jnQRlVCW/Lsilo9PB8PYkSPFkWgp3ghDpU6VnFiAWbVDtmH+yvB9Pu9KzFIU
	V700OEyI6FQIoKq1Z7Bf2kHPbAb8hftxQveddTNeHSxYr35OFdEvKgOebBhCnnYtfUuAW3aaIyKjM
	CHWpsvPrID0AyEJX7C5sbYrXjd0+1U8Q310Br05puZh/k4sR6iGUezUnNnLOZmBQJ3/4DxPY/WpnY
	gJPPJRGC8J2T4ofMlCCLdQvlMPXDM399l+H6n1em47fKwbJIwHeB2DF3RQMkoFz0fJW2EERbBm3Tg
	4iRc7IBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiWp5-0000wO-3v; Tue, 09 Jun 2020 05:29:19 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiWp1-0000ua-F2
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 05:29:16 +0000
Received: by ozlabs.org (Postfix, from userid 1034)
 id 49gzF51826z9sTV; Tue,  9 Jun 2020 15:28:56 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: linuxppc-dev@lists.ozlabs.org, Pingfan Liu <kernelfans@gmail.com>
In-Reply-To: <1585749644-4148-1-git-send-email-kernelfans@gmail.com>
References: <48c1b852-28e0-9c46-cafa-7c5992f966a7@linux.ibm.com>
 <1585749644-4148-1-git-send-email-kernelfans@gmail.com>
Subject: Re: [PATCHv4] powerpc/crashkernel: take "mem=" option into account
Message-Id: <159168034259.1381411.9724380160125554368.b4-ty@ellerman.id.au>
Date: Tue,  9 Jun 2020 15:28:56 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_222915_661780_4BAB3DD8 
X-CRM114-Status: UNSURE (   4.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: kexec@lists.infradead.org, Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, 1 Apr 2020 22:00:44 +0800, Pingfan Liu wrote:
> 'mem=" option is an easy way to put high pressure on memory during some
> test. Hence after applying the memory limit, instead of total mem, the
> actual usable memory should be considered when reserving mem for
> crashkernel. Otherwise the boot up may experience OOM issue.
> 
> E.g. it would reserve 4G prior to the change and 512M afterward, if passing
> crashkernel="2G-4G:384M,4G-16G:512M,16G-64G:1G,64G-128G:2G,128G-:4G", and
> mem=5G on a 256G machine.
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/crashkernel: Take "mem=" option into account
      https://git.kernel.org/powerpc/c/be5470e0c285a68dc3afdea965032f5ddc8269d7

cheers

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
