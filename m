Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5069CABC25
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 17:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bJugYa2Ptc+n5kOpCXg+2JkyCwE/Dq0TTzBIEzl93Y=; b=esuqfg3lsLZrHb
	QqYNzK6AXrLt2RNT+j2K1igKDjOQ25VdyI0upgY1Au6eAJlYjcCForLDAGvBIAXtJtzGU6nCwx0bK
	3ui5IfFjC378+WRc/aCQg1uqW4uluu4mU/LydA/Ww29XdZWu91OoitI4XSIjDV5k4zk1H5+sIJW9A
	t7lqarHtLNP2WC3lwwwmxGlRmt9eiHzauOJHITNkHHIrvAOUeG89SJ5Ivy/lxAOqPwBoL7RpzKNel
	0pOZrZThckZnBBsvOIJLMi8KjVyTpI5+McNQ5SGSwItMzbk0Jf/eoVb+vBC67G7UpCW421/Hq1xiq
	5WTeB26J2TgWRno02evQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G2O-0006JP-Az; Fri, 06 Sep 2019 15:20:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G2J-0006Fi-Qk; Fri, 06 Sep 2019 15:20:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D76601576;
 Fri,  6 Sep 2019 08:20:30 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E23E83F59C;
 Fri,  6 Sep 2019 08:20:27 -0700 (PDT)
Subject: Re: [PATCH v3 09/17] arm64, trans_pgd: add trans_pgd_create_empty
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-10-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2d9f7511-ce65-d5ca-653e-f4d43994a32d@arm.com>
Date: Fri, 6 Sep 2019 16:20:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-10-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_082032_215754_3AC85757 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
> This functions returns a zeroed trans_pgd using the allocator that is
> specified in the info argument.
> 
> trans_pgds should be created by using this function.

This function takes the allocator you give it, and calls it once.

Given both users need one pgd, and have to provide the allocator, it seems strange that
they aren't trusted to call it.

I don't think this patch is necessary.

Let the caller pass in the pgd_t to the helpers.


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
