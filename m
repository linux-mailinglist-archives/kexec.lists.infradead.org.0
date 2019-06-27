Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C491E57B32
	for <lists+kexec@lfdr.de>; Thu, 27 Jun 2019 07:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Xd4X3v/cbA9z66g8cpD6vP6hL4mWmlmTAiYTyphwVA=; b=oVfqQtGsbvSLw6
	RHuNB1A8hD48XqR4AafT8LSSFJe57UlpwFZDmGqBJy+kMnQzzsk5RuWVjM8HbhYlI27TTj3IqL2O5
	p+sC+OHEnOH3IZfWQo1e1yJZqDjHtqKei/uuGZVcMfh11abB/1CFkX5JtfThN229bgB3LDONFwJ89
	NrWukjMYRszgVSeoxuod37dUaBxlKmSmkXQVfW6olfs0sP9CB3wI2rWnZLii+VjJsUv/Bo8vFSYpn
	QPP4zEJOnzOr5nh9W04qPsRGEP7pjDdHWmWR3hwYqkk7srEBMogZ5HWyxw62Zc8+OFenHz3y3x60g
	1JSMzWTvNxglMoFD/YuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMo8-0006rG-U8; Thu, 27 Jun 2019 05:18:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMo4-0006ep-O3
 for kexec@bombadil.infradead.org; Thu, 27 Jun 2019 05:18:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FEN66ucUtL1qXIj4syhRHrQpQpOqWmEsAJiDSDhZGFo=; b=GA3HRIUQclErBnzHlgyV0+fse
 fVbzMMBwpm2xumyEsiL7MkRD31WTlAJQ4VWD2J/hpF+A+BIplzKYj76Umbirk6up07vKZNLdIR2nL
 2N1Et2p4HTIJQFvJnOkmN1Wjvv+UtR4jImBLYroGIdnhcqAup5Wun+JYpZwHfrBKdW6uG89GJS8Ww
 vS3Nxg8UugFS2iMC9wDtPiNv9hXH9MgSOksK4sK706UKIMpB4Zog2IjAxjpPtuIflX1dkeTELfl9r
 ZTFbr743ztabyWrVHC3jgSlyFVm0KfBs1LBtojshMB9wAtG0h2J+28WeTIY/zJyJFxa5+vGfGPCv2
 d7tt2Ywpw==;
Received: from namei.org ([65.99.196.166])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMVG-0006Wi-27
 for kexec@lists.infradead.org; Thu, 27 Jun 2019 04:59:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id x5R4x9Cl020018;
 Thu, 27 Jun 2019 04:59:09 GMT
Date: Thu, 27 Jun 2019 14:59:09 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH V34 09/29] kexec_file: Restrict at runtime if the kernel
 is locked down
In-Reply-To: <20190622000358.19895-10-matthewgarrett@google.com>
Message-ID: <alpine.LRH.2.21.1906271423070.16512@namei.org>
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-10-matthewgarrett@google.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_055922_343015_FA995298 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Matthew Garrett <mjg59@google.com>, David Howells <dhowells@redhat.com>,
 linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019, Matthew Garrett wrote:

> From: Jiri Bohac <jbohac@suse.cz>
> 
> When KEXEC_SIG is not enabled, kernel should not load images through
> kexec_file systemcall if the kernel is locked down.

This is not a criticism of the patch but a related issue which I haven't 
seen discussed (apologies if it has).

If signed code is loaded into ring 0, verified by the kernel, then 
executed, you still lose your secure/trusted/verified boot state. If the 
currently running kernel has been runtime-compromised, any signature 
verification performed by the kernel cannot be trusted.

This problem is out of scope for the lockdown threat model (which 
naturally cannot include a compromised kernel), but folk should be aware 
that signature-verified kexec does not provide equivalent assurance to a 
full reboot on a secure-boot system.

Potential mitigations here include runtime integrity verification of the
kernel via a separate security monitor (hypervisor, SMM, TEE etc.) or some
kind of platform support for kexec verification.


-- 
James Morris
<jmorris@namei.org>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
