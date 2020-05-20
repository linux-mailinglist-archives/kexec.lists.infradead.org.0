Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D761DAE81
	for <lists+kexec@lfdr.de>; Wed, 20 May 2020 11:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqIUwq3r7gPbXu//IRJKPB1BrI3n/+kqDbwIQXZH+V4=; b=OlAyB1Ai9pDyaa
	Wtdt4LeYEYQvZw5MV7yNWWNeWDNAmg+FaBkTD9aWVH2Md10fKPJjog5MICACYjJJHX2owqeo4p1Vy
	kqOCKUGLAKbSLAmWTTaUlFRGdc1f5epZgEr2sAifhskOA/pvU1+Gc/ZjOTyKmnFyzpl99sbdZonhZ
	cgJcj2wHS7EZFR/MtiA+0CjXEpn2MMsV/H2X2Mx2urXyyCynjx4KHEmUo+kgDjkt1KEz+MW89RXUB
	JrSm5dgWPBuLuOIeDt7VxRX0/py64yVJyQQfRwGwFoA8UyCRrxJj9Rt4ssTs0TrMUy46eX7P4Gb8J
	ppvUI5+HNXrO96CTwWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKqZ-0004qY-MY; Wed, 20 May 2020 09:17:07 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKqV-0004pw-Lc
 for kexec@lists.infradead.org; Wed, 20 May 2020 09:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589966221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mTNW2Odgu4ScH3HKgo9G9zShqsDjgwB0JmSMhzXEj+4=;
 b=EyNNRPgke4DBaNbVPxXXpYoG0h1fjh3G1p2kvzMxGY6HN08zPIo+9IvB+kJSvYrvMZCZwt
 NmYu1/vFfFY3ItvYS8L1x7yLTEFew58vM5yyDQU2TSgX7Vuri8ZCIvJdiUL/iSe4K47R6I
 fLGQYuX3f6A/y+VaPtfcFl35pZkwEpI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-ZHWyfhhfNHqF41LTeCUsgQ-1; Wed, 20 May 2020 05:14:48 -0400
X-MC-Unique: ZHWyfhhfNHqF41LTeCUsgQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F5178005AA;
 Wed, 20 May 2020 09:14:47 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-148.pek2.redhat.com
 [10.72.12.148])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 99A6360BEC;
 Wed, 20 May 2020 09:14:44 +0000 (UTC)
Date: Wed, 20 May 2020 17:14:40 +0800
From: Dave Young <dyoung@redhat.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH] MAINTAINERS: add files related to kdump
Message-ID: <20200520091440.GA5052@dhcp-128-65.nay.redhat.com>
References: <20200520080557.13260-1-bhe@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520080557.13260-1-bhe@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_021703_916988_39169940 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: akpm@linux-foundation.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Baoquan,
On 05/20/20 at 04:05pm, Baoquan He wrote:
> Kdump is implemented based on kexec, however some files are only
> related to crash dumping and missing, add them to KDUMP entry.
> 
> Signed-off-by: Baoquan He <bhe@redhat.com>
> ---
>  MAINTAINERS | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 83cf5c43242a..2f9eefd33114 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9251,6 +9251,11 @@ L:	kexec@lists.infradead.org
>  S:	Maintained
>  W:	http://lse.sourceforge.net/kdump/
>  F:	Documentation/admin-guide/kdump/
> +F:	fs/proc/vmcore.c
> +F:	include/linux/crash_core.h
> +F:	include/linux/crash_dump.h
> +F:	include/uapi/linux/vmcore.h
> +F:	kernel/crash.*

ls kernel/crash.*
ls: cannot access 'kernel/crash.*': No such file or directory

But ls kernel/crash*
kernel/crash_core.c  kernel/crash_dump.c

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
