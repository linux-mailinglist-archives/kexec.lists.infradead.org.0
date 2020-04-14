Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7731A8783
	for <lists+kexec@lfdr.de>; Tue, 14 Apr 2020 19:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bt6VOnaFJr8Zr3AS3q0Iv5hbEimKsofKm9j/oUYA4IE=; b=m/MOXoZgFmxAp8
	GtkLU4t4URfUPyRs8nSaMoi5FMlueDbrS1iRWxJZCF7YExGrTkN8iAw06f+KUr4HwZRPwyqYttUn0
	54wl27aPH3R0XuaWCa9CShuAPX5TRKd/nr7GqAXi8BQP6DAGMZcwzlzN17zLwzFiHxIcrQdNXLrbi
	yfBy1bkl3eNVZG/MRa4GYnd/qNhdho71AYm7EHFmmH/tqJb5f7oPC2f5K3mnU3NIhQElOunRTZvP6
	iG57iY7E1+1dLSfmmI5hWxZJ4zzO2Tu5Oj8KW9Q6wzc+o0VzTxsjuFZtM9fWGLagybrFVIMAM0NHu
	jdu7gsgEwK/4EWNf+NIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPP6-0004L1-41; Tue, 14 Apr 2020 17:31:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPP2-0004KR-E3; Tue, 14 Apr 2020 17:31:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 834FC30E;
 Tue, 14 Apr 2020 10:31:15 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A25F3F6C4;
 Tue, 14 Apr 2020 10:31:09 -0700 (PDT)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
To: Dave Young <dyoung@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200330135522.GE6352@MiWiFi-R3L-srv>
 <2bdfbb1c-49da-d476-4a38-f91937105ae3@arm.com>
 <20200331034612.GB83248@dhcp-128-65.nay.redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <7cfeaf4e-a869-16be-3fe6-521a41d94508@arm.com>
Date: Tue, 14 Apr 2020 18:31:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200331034612.GB83248@dhcp-128-65.nay.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_103116_529130_59F1B906 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dave,

On 31/03/2020 04:46, Dave Young wrote:
> I agreed that file load is still not widely used,  but in the long run
> we should not maintain both of them all the future time.  Especially
> when some kernel-userspace interfaces need to be introduced, file load
> will have the natural advantage.  We may keep the kexec_load for other
> misc usecases, but we can use file load for the major modern
> linux-to-linux loading.  I'm not saying we can do it immediately, just
> thought we should reduce the duplicate effort and try to avoid hacking if
> possible.

Sure. My aim here is to never debug this problem again.


> Anyway about this particular issue, I wonder if we can just reload with
> a udev rule as replied in another mail.

What if it doesn't? I can't find such a rule on my debian machine.
I don't think user-space can be relied on for something like this.

The best we could hope for here is a dying gasp from the old kernel:
| kexec: memory layout changed since kexec load, this may not work.
| Bye!

... assuming anyone sees such a message.


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
