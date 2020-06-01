Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573AE1E9F56
	for <lists+kexec@lfdr.de>; Mon,  1 Jun 2020 09:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Dnjl4ewyz6QEFHYAdm1WYA8cVUE2t/WmswgSnT6T1Q=; b=Se9VjISqgj0HgC
	9VHN07rbz/auVg81q1R0LI0ALPHaY4OUwpT+YaAAz0b403h4HbTUqz7NPueh8OvDHM61kc142SVWX
	eEbRYWxVAKRmYB+dmR4qnDW1hDECDfzZZ1MaIVo5dtmeZjGbYzeULTPcVpQULDnzFSwwdNqXEy9SH
	MqSMv8h0uDFGsl/NbgYJsrBNh/OWApUyASue3vKSyM4/yu0k/gYyXJtNy85I6n+m86c9Pq8LJGFHh
	qWKZdG+GpYXZa0HN5eGAZBEWxotNrSZdXts+eIlnmMImeWdrLtBEtzdhbYlalZ55I5wiy/Y16Z7g0
	WZrUTkA/1RjlzxitjUbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeyJ-0005of-0M; Mon, 01 Jun 2020 07:34:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeyD-0005oB-M1; Mon, 01 Jun 2020 07:34:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76B87206C3;
 Mon,  1 Jun 2020 07:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590996892;
 bh=40jsU43O8eC43slVJFFsvBL5/wiEz4WNFbtD3aZZJyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vmqjomVQL0qtmrHqycB8s5j+pGrF2cJ1aFKhHxb90mPeHNB8kpu5YC3i+o5Q1TYtl
 ivvEWYnJYIdUhunIxi7o7joahKc9cWqmC7XAeCoY66vI90+W7QVz0iPPwJvo6ZALAw
 EvcYM/8kdC3q6v8E3fT9tePz2+n/ZJpBfvnpaLQg=
Date: Mon, 1 Jun 2020 08:34:48 +0100
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: kdump: Getting "warn_alloc" warning during boot of kdump kernel
Message-ID: <20200601073447.GC8601@willie-the-truck>
References: <CAJ2QiJJgw0Cm=XBeVvOJ8WnWB0Xfv3JEYKTQUovnwrrDw17w9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJJgw0Cm=XBeVvOJ8WnWB0Xfv3JEYKTQUovnwrrDw17w9g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_003453_742878_E78B5800 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 04:28:13PM +0530, Prabhakar Kushwaha wrote:
> We are getting "warn_alloc" warning during boot of kdump kernel. This
> warning is observed with latest upstream tag (v5.7-rc5).

Perhaps you can help to review:

https://lore.kernel.org/r/20200521093805.64398-1-chenzhou10@huawei.com

Since it looks like it should solve your problem.

Will

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
