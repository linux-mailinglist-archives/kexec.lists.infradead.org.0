Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0281D70D0
	for <lists+kexec@lfdr.de>; Mon, 18 May 2020 08:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLXekylX3HIokRzl7S/eRG0tw1a2SUuBRWisbybCXPU=; b=Qks9PorA/QPO1+
	+oeHIQH5d40QKhyS7d0YEazLOqMZ5H692b+dks9tto2/stwHNoX0GuHgA43FFLHSy098pdD4UV5qw
	vGAzSgb5g/DADlfSMfwMpJkiPsQE8PvLqPuHCD15LqBzWX0YuTLPmd8aNN1q26HxB1g5PrXMX4Dw1
	Tz5O+QqIzELOtEOnGymJBQRyroxkFu/VN08UK9BV/WVAz6oIpa4czLHX12cP2z8dKfIOGngFxCF1L
	pzzcpxxGtAUJhiAn0SR7QXFRQXj5FhB6wI4ZcynBS6kb+uGhepfxRy0hYaMiO0Vy3CzZtaGUs68yF
	3wt7yjm7Pr6ca6BQKfyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaZBL-0007Lh-S5; Mon, 18 May 2020 06:23:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jaZAt-0007LB-Ns; Mon, 18 May 2020 06:22:55 +0000
Date: Sun, 17 May 2020 23:22:55 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
Message-ID: <20200518062255.GB15641@infradead.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515212933.GD11244@42.do-not-panic.com>
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
Cc: rafael@kernel.org, zohar@linux.ibm.com, dhowells@redhat.com,
 paul@paul-moore.com, nayna@linux.ibm.com, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>, geert@linux-m68k.org,
 dan.carpenter@oracle.com, keescook@chromium.org, scott.branden@broadcom.com,
 selinux@vger.kernel.org, viro@zeniv.linux.org.uk, skhan@linuxfoundation.org,
 eparis@parisplace.org, tglx@linutronix.de, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 ebiederm@xmission.com, jeyu@kernel.org, linux-fsdevel@vger.kernel.org,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 09:29:33PM +0000, Luis Chamberlain wrote:
> On Wed, May 13, 2020 at 11:17:36AM -0700, Christoph Hellwig wrote:
> > Can you also move kernel_read_* out of fs.h?  That header gets pulled
> > in just about everywhere and doesn't really need function not related
> > to the general fs interface.
> 
> Sure, where should I dump these?

Maybe a new linux/kernel_read_file.h?  Bonus points for a small top
of the file comment explaining the point of the interface, which I
still don't get :)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
