Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BAE1BE4AA
	for <lists+kexec@lfdr.de>; Wed, 29 Apr 2020 19:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42/pYwQdM7t63YRUk1t0/jD2P0F9t2DgqvTGsm3f8p0=; b=nBkqMYFBmVae/O
	QlyHnrtN6b9g4TMh6iqXDWUivBYHfER9pS25+T8uZ1sTW1JR1edIhjHlEYppW89WI8wf9V1j/BBR8
	fbh/tvhhOBGBuaWo5Xdb6MC3S+wDZ1GuOhemlbW9jwPrcCdDbZXEdOKfws6ZO8cCpQa5bsDbqI2fe
	zS16HZTdvusXRAR3kp6Z/mHpEP+vvtT/QZmiMQAgk+GAbLq0rmE4xUk3LNIeuhOL/kk08EdNm7xjV
	olJbNljNPduD2QvYYYlhucNNLw6v2YUKyNCcc7WmVjseqwPCzLeZ+19Y1co06Q5aNf7HEdXFDUPzQ
	iX2EUOm9MMFJDHk6uUJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq7L-0004DE-2Q; Wed, 29 Apr 2020 17:03:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq5a-0002Ys-CG; Wed, 29 Apr 2020 17:01:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72CB11045;
 Wed, 29 Apr 2020 10:01:37 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05F713F73D;
 Wed, 29 Apr 2020 10:01:34 -0700 (PDT)
Subject: Re: [PATCH v9 09/18] arm64: kexec: call kexec_image_info only once
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-10-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <61f1b270-9c88-f309-9665-0221a228b5b9@arm.com>
Date: Wed, 29 Apr 2020 18:01:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-10-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100138_481257_B09C9C7C 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> Currently, kexec_image_info() is called during load time, and
> right before kernel is being kexec'ed. There is no need to do both.

I think the original logic was if debugging, you'd see the load-time value in dmesg, and
the kexec-time values when the machine panic()d and you hadn't made a note of the previous
set. But I'm not sure why you'd have these debug messages enabled unless you were
debugging kexec.


> So, call it only once when segments are loaded and the physical
> location of page with copy of arm64_relocate_new_kernel is known.

Sure, keep the earlier version that is more likely to be seen.

Acked-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
