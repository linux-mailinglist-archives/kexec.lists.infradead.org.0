Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B001D1D42
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 20:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNI73fomIqzJwGhFjmkpjaH7Ur355ZALyDWhMtURoDg=; b=ZCiBhxg8WL0RUE
	irV7WvOq/AG7giTn7gVPm+7lc9Fj2r7uOwjgVcdd8ezOGMYhJHbeJLkHlRhE5lpFJTvhjkG/38ep+
	/U9YQttD3J+w3dqF8XD6hJAjTJYwBtBA4ypYT6RwfICcMUDVhx4mwMP+TePkeld99mFrwkomObPMw
	gR72B7SB9cW4AxJbBbdRKHxCdTyXkGduDzPFAKp2hkUWVKiELYld4+jtHSZKUoztzzicEtk+6lMQ4
	I8Gwx9NvA4XklP6vlx1onTiHO8m7hrsTzVGJYsMvVQbIMREeVNtY5CEy+lPlSUDeIa8X05cTRqcXt
	8v16HyECrkjU9BCvPwkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvwp-0006Wm-OY; Wed, 13 May 2020 18:17:39 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jYvwm-0006WX-HZ; Wed, 13 May 2020 18:17:36 +0000
Date: Wed, 13 May 2020 11:17:36 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
Message-ID: <20200513181736.GA24342@infradead.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513152108.25669-1-mcgrof@kernel.org>
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
 geert@linux-m68k.org, dan.carpenter@oracle.com, keescook@chromium.org,
 scott.branden@broadcom.com, selinux@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, eparis@parisplace.org, tglx@linutronix.de,
 gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, ebiederm@xmission.com, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Can you also move kernel_read_* out of fs.h?  That header gets pulled
in just about everywhere and doesn't really need function not related
to the general fs interface.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
