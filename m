Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829F5D4751
	for <lists+kexec@lfdr.de>; Fri, 11 Oct 2019 20:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOh11GDhD+Brfp6B++4GKqDeEbbKmicSYbr1lVVOlao=; b=TPFNmhVuVEhNXr
	u25KTtQqBh9C4aUp6YQbs/fN5MJ7NTZ5ngW5isWZv67u3+X0it0iz68sT6lSHSWp+bCPbOldqo0ny
	KxnfY5QTZnY9jGuTZWugO2zBJXbZ7C+cFp3x9EBUeDiQH+6mkNj85cn3wY0mBv8a9MKQ+vs9HVU0F
	us1xolZiTWLq9zAmkd8SO/rr+LOLuCnkaybhhbyBWNhbrN70nh5cPBSt+hctcxtBJJ1sd7M5HXYN2
	h3Zea+CCHpjpy6NqA4aZrl8xh5akGwGUOuEKtkX1TVcfpkcHwpS2zX75tlCby7UyuCc9eGNfuzx1e
	d5k4W+kOKFyn2dThSi+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzTm-0005d4-55; Fri, 11 Oct 2019 18:17:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzTj-0005cf-7c; Fri, 11 Oct 2019 18:17:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DF25142F;
 Fri, 11 Oct 2019 11:17:26 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3BE8B3F703;
 Fri, 11 Oct 2019 11:17:24 -0700 (PDT)
Subject: Re: [PATCH v6 02/17] arm64: hibernate: pass the allocated pgdp to
 ttbr0
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-3-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <bb937db3-f23a-809b-4ad8-ca86f689554d@arm.com>
Date: Fri, 11 Oct 2019 19:17:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004185234.31471-3-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_111727_312665_0B05534F 
X-CRM114-Status: GOOD (  10.41  )
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

On 04/10/2019 19:52, Pavel Tatashin wrote:
> ttbr0 should be set to the beginning of pgdp, however, currently
> in create_safe_exec_page it is set to pgdp after pgd_offset_raw(),
> which works by accident.
> 
> Fixes: 0194e760f7d2 ("arm64: hibernate: avoid potential TLB conflict")

(That was a 'break before make' fix, the affected code comes from:
 82869ac57b5d (""arm64: kernel: Add support for hibernate/suspend-to-disk))

But, it works in all one circumstances its used: we know all the top bits will be zero.
I agree its by accident and we should fix it.

I don't think we should send it to stable.
Please drop the fixes tag, with that:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James


[0] https://lore.kernel.org/linux-arm-kernel/ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com/

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
