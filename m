Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B3D3B387
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 12:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7sH0qXju6RjvAA7mONeXxA0raPFXdUz35dt+z2fFew=; b=a1pEifJcWG3YlR
	y1CTssZFrUcOx1xFEbyw8ACkjjYRzumedz39thlEnYOoTew3+WnTNWpL4ReXo1KOKAVtSaNrulJVe
	gBzG0sjAaVFSeHUq5aMrHcwEMyeolsQwPZH+g7iyn+NQyhJbt5IFRa2TOOGVDBc8cvFG1MU6fUZRL
	/8640evrO7fMdUaU4kNy6lHwTuDIAT9MQZl8s1rB6XHz43KxG2+leWpdPAsy1FkyUQIxcfjll2eSp
	SxJtK8sZ6ISp79MPTcanlrJ7TsiQsO26c15kqIAkYhkCAzHMm/zlxnMtf1QoTruT2QtfF4XGnyqbe
	uQZr7TLQ3yow5eE2FrGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHwi-0002JN-2i; Mon, 10 Jun 2019 10:54:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haHwd-0002Bd-Mg; Mon, 10 Jun 2019 10:54:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF15E337;
 Mon, 10 Jun 2019 03:54:29 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69E6E3F557;
 Mon, 10 Jun 2019 03:56:10 -0700 (PDT)
Date: Mon, 10 Jun 2019 11:54:26 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v2 00/12] 52-bit kernel + user VAs
Message-ID: <20190610105425.d4vubtcknc2wn5uk@mbp>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <762411c4-1148-a10e-2a79-d2c9e38bc46e@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <762411c4-1148-a10e-2a79-d2c9e38bc46e@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_035431_796255_37953AFD 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 04:10:50PM +0530, Bhupesh Sharma wrote:
> On 05/28/2019 09:40 PM, Steve Capper wrote:
> >   2) How can this memory map be advertised to kdump tools/documentation?
> >      I was planning on getting the kernel VA structure agreed on, then I
> >      would add the relevant exports/documentation.
> 
> Indeed, in the absence of corresponding changes to the Documentation
> section, it is hard to visualize the changes being made in the memory
> map.

We used to have some better documentation in the arm64 memory.txt until
commit 08375198b010 ("arm64: Determine the vmalloc/vmemmap space at
build time based on VA_BITS") which removed it in favour of what the
kernel was printing. Subsequently, the kernel VA layout printing was
also removed. It would be nice to bring back the memory.txt, even if it
is for a single configuration as per defconfig.

-- 
Catalin

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
