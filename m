Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1540BABC16
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 17:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prXhpJn3wvNWi3o8xw63pTkguirzmTqu6WAPm9CLbOM=; b=N0+X1VEEUncU5T
	eYMfAggbmkszZlIRmTSkGo++ppafRE5DCNPYGVbnXNqCFDODW4I2jNBfbnJ+pQoXu2+x7kzejG7HU
	8zyi3J/AFuKM7k2op815HzgFAUmM8IyJOJlRkbon1GWfcoHWZdrscFYjiPCk3asYr9YIgC5Iomi8Q
	mNAvmfFuQiLtIMWRNIrMTMRnNJejpOWopxRm8jXQrT+Bn2PslHqn07CjHa1W3cQ+fRoex0HGIlEgc
	wO1/whgssnryoo0++MSRq7eaXy96v9ddl2i31txBQpruKM6iTUsNG7GUaST3UWingzREv/UAQRljH
	MRQ5W6v8zu3XdndL61lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G0Z-0003ZU-Q3; Fri, 06 Sep 2019 15:18:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fzq-0002vo-4V; Fri, 06 Sep 2019 15:17:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B9CE1596;
 Fri,  6 Sep 2019 08:17:57 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D1163F59C;
 Fri,  6 Sep 2019 08:17:54 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 05/17] arm64, hibernate: check pgd table allocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-6-pasha.tatashin@soleen.com>
Message-ID: <ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com>
Date: Fri, 6 Sep 2019 16:17:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-6-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081758_282335_85959227 
X-CRM114-Status: GOOD (  14.54  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On 21/08/2019 19:31, Pavel Tatashin wrote:
> There is a bug in create_safe_exec_page(), when page table is allocated
> it is not checked that table is allocated successfully:
> 
> But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).

If there is a bug, it shouldn't be fixed part way through a series. This makes it
difficult to backport the fix.

Please split this out as an independent patch with a 'Fixes:' tag for the commit that
introduced the bug.


> Another issue,

So this patch does two things? That is rarely a good idea. Again, this makes it difficult
to backport the fix.


> is that phys_to_ttbr() uses an offset in page table instead
> of pgd directly.

If you were going to reuse this, that would be a bug. But because the only page that is
being mapped, is mapped to PAGE_SIZE, all the top bits will be 0. The offset calls are
boiler-plate. It doesn't look intentional, but its harmless.


Please separate out the potential NULL-dereference bits so there is a clean stand-alone
fix that can be sent to the stable trees.


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
