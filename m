Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A5D1FC59D
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 07:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wRcwuKy0SjfifdqAU8nCI2mB/cLAtgZA8Ss/qLvX3w=; b=kCvZbFMr6c7UXa
	2X/TNsZC2peWXaiDNP4FPv9mykZzCqgqEyUqkCNJz39Jx77QqvGImvTfZR0YP6Fg1e1ZM80D4wpZd
	otTnFs8cZ5kspplg4kq5RjcQBJ734i+cw1QbBhyN81uVo/eh4J7Vj/xNf+jW00OQAiQwNd8viwsl9
	+w/9dC9cD8yw7wIJgu5ISpRDpB9MLvFeY192dQLhSnet+shYaPrZL1pvFfzZeRxK4p9jTOa+HEAx0
	AbdrG2njqB1sTQkCcoza42HwQOgmYkTvaKC8ftic3X+b7/+dmssfpvdEnbx2wlmNXI/SjNo4TA8sm
	6VjpcWBuI382BCdAD+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlQaw-00059Y-VD; Wed, 17 Jun 2020 05:26:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlQat-000593-MJ
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 05:26:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4022207E8;
 Wed, 17 Jun 2020 05:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592371599;
 bh=79DzjT3Wyf8IFb34qS9prqoal958fCGONTbZiSKFSOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rhxoiszNvEdttqcF/zrnRIJzXcBDo/rLz9ZT5v38k4slmW526WEJGtwK/1F4PjEMT
 CepUk8nl9ooUHOwQlnO+NnBkH0prif+4Lv3lJ6DGJoO5nImGx95QlnL7A7yGjswijX
 +qs9XiUJ1nkweH7GtPnT9C+YHxuuRWnCWtriTwE8=
Date: Wed, 17 Jun 2020 07:26:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Scott Branden <scott.branden@broadcom.com>
Subject: Re: [PATCH] fs: move kernel_read_file* to its own include file
Message-ID: <20200617052633.GA1351336@kroah.com>
References: <20200617033152.16883-1-scott.branden@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617033152.16883-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_222639_750302_8FF250D3 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-security-module@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, selinux@vger.kernel.org,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, kexec@lists.infradead.org,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Paul Moore <paul@paul-moore.com>,
 Luis Chamberlain <mcgrof@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Eric Biederman <ebiederm@xmission.com>, Jessica Yu <jeyu@kernel.org>,
 linux-fsdevel@vger.kernel.org, Eric Paris <eparis@parisplace.org>,
 linux-integrity@vger.kernel.org, "Serge E . Hallyn" <serge@hallyn.com>,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 08:31:52PM -0700, Scott Branden wrote:
> Move kernel_read_file* to it own kernel_read_file.h include file.

That says what you did, but not _why_ you are doing it :(


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
