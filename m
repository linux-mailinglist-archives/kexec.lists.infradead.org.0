Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170EE12426C
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 10:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXfV3JzStXyA7Hg6PjGCT0mqUUI9APEvCoK6n4+cSyY=; b=TrHGmFUJOu4TWf
	ZMDtXqDsTc5tC25FMSDGWdIoTA68WpaFIHtcTUogt+LKH5d6g82Wtdh+7li9jAE/lZbV/7s8SD26z
	2lD9gCxve3blyzkXXGAl8MVp5TQUIfz0NUUBfOy33l7g+SfzG4HZG+nzckBByGksnwFKwR/NFx+Y/
	2HOLnanzS9Hx8TayHugKUcyHnqH7AG9DfnNiUtFs8uRCU3OZAcfNSCAl5YeiXCg0CW3Lgt2QrI1tm
	Cw77CRwv/A/tb5IQMI4pSDPoMg8J6xBQRLtJ/x1IslYdxmtLS2c0a+SutHh8++KuAubECeC/gx96C
	5JLT70NVJiDUurs5V+KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVL0-0001CO-RF; Wed, 18 Dec 2019 09:09:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVKx-0001BC-0B; Wed, 18 Dec 2019 09:09:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5759A20717;
 Wed, 18 Dec 2019 09:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576660178;
 bh=7p1OzltEZEmB0CiHFlkfl9O1s0FHcf0C4bMyS+2zgBc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T3Qmls+3oGDEQhywVUrCCKEOeKinH1e2EimPPT29RqOwaajYXguON53TGXGlPXSUF
 equvOmN5ftMPc58DJZYz9M9yEOb1xIy3td/nuNDreNLt3m/+GitQdVmkk/n5lDij27
 0yd/eZmYEAgbU9w2vkczNbZfoK+ONs7npCr65h+U=
Date: Wed, 18 Dec 2019 09:09:32 +0000
From: Will Deacon <will@kernel.org>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH v6 0/4] support reserving crashkernel above 4G on arm64
 kdump
Message-ID: <20191218090932.GA14061@willie-the-truck>
References: <20190830071200.56169-1-chenzhou10@huawei.com>
 <2a97b296-59e7-0a26-84fa-e2ddcd7987b6@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a97b296-59e7-0a26-84fa-e2ddcd7987b6@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_010943_061294_FCE12806 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: horms@verge.net.au, catalin.marinas@arm.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 james.morse@arm.com, guohanjun@huawei.com, tglx@linutronix.de,
 dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 10:07:59AM +0800, Chen Zhou wrote:
> Friendly ping...

You broke the build:

https://lore.kernel.org/lkml/201909010744.CDe940pv%lkp@intel.com
https://lore.kernel.org/lkml/201909010704.4m9y2sg7%lkp@intel.com

So I doubt anybody will seriously look at this.

Will

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
