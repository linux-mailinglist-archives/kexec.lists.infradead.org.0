Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B2A1B7ED1
	for <lists+kexec@lfdr.de>; Fri, 24 Apr 2020 21:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ARLwnvWj/jJT/rOe+w4EnGGze9e0LnQzVJoz4t9btHc=; b=pPTrFr0OFTb8WSfGWupKqGpf+S
	56vo035YA7UMNV/6ER+s/nuH5rH7Zo2Mew7om1lgXSboOiwNBGbrmVyFconcp2uBM9DSIENdyPqYt
	+TgGlJMGKSNAARxbLsLA6nHl97Y0V+xUYcLHbfQ6N+mkcRO0kBJORzQ9DSO9UnT7HrTmQAWnA4Riy
	E5ZW7AvC4/xdNi5VOPEjCprbKGsw1HexsWhHtgFy4Zq4lHPVB60FQwTvNYw1WbkQJvfY2dc8mSf7F
	uRG+uBQBUc4mNxIilWo+eiQwlc7rIarxX5wcgsyewt8BnkWsHUrx2eYK1luRpagbhmrGtHuFNIH7T
	pdkua5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS3vt-0000u7-QU; Fri, 24 Apr 2020 19:24:17 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3vm-0000ra-CQ
 for kexec@lists.infradead.org; Fri, 24 Apr 2020 19:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587756243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WU5LzGMMNq2+i3Wtu0QfmEdTOVkbwK7dBhfEyTrURTE=;
 b=WdCw0NSbN/8gOqUMdtcKeatF3Q0zlinywKWDLiHFO5HC0PoKwJ30S8pnQ123tNktCIlRQK
 tU/3kixjVyp+j8YCRUfWW57FvobzL8Y4gzmhbnkSCT9NBdD1ycaMd635TOgTFM7PDM5lrq
 iqVNxjloHdoYeAlt66AT44gKWvEAFjI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-6EQNOL_DNOyBYTlQT0bSVw-1; Fri, 24 Apr 2020 15:24:01 -0400
X-MC-Unique: 6EQNOL_DNOyBYTlQT0bSVw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AAD7E107ACCD
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 19:24:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A33975C1D0
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 19:24:00 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C3774CA94
 for <kexec@lists.infradead.org>; Fri, 24 Apr 2020 19:24:00 +0000 (UTC)
Date: Fri, 24 Apr 2020 15:24:00 -0400 (EDT)
From: Dave Anderson <anderson@redhat.com>
To: kexec@lists.infradead.org
Message-ID: <289396508.24991092.1587756240556.JavaMail.zimbra@redhat.com>
In-Reply-To: <mailman.7.1587754804.31179.kexec@lists.infradead.org>
References: <mailman.7.1587754804.31179.kexec@lists.infradead.org>
Subject: Re: [crash - Question ] mod -s <module>  not working with
 compressed modules
MIME-Version: 1.0
X-Originating-IP: [10.3.113.22, 10.4.195.13]
Thread-Topic: mod -s <module> not working with compressed modules
Thread-Index: YiY/4hXyI2Ahcyc01m6QNMFS46Ii1g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_122410_497378_60E5BFFE 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



----- Original Message ----
> 
> Hi
> 
>  I observed that  loading module symbols from a compressed ko.xz  ( crash 7.2.3-10.el7 ) does not work,
> and the desired module has to be un-compressed . Does anyone know if there is a recent patch that addresses this ?

Nope.


> 
> 
> Example:
> 
> Modules are located at the mod path :
> 
> crash -s  `find kernel-uek-debuginfo-4.14.35-1902.302.1.01.el7uek.rc1 -name vmlinux ` vmcore --mod ./kernel-uek-4.14.35-1902.302.1.01.tst17059_u3.el7uek.rc1/lib/modules/4.14.35-1902.302.1.01.el7uek.rc1.x86_64/kernel/
> 
> 
> crash> mod -S
> mod: cannot find or load object file for usb_storage module
> mod: cannot find or load object file for dca module
> mod: cannot find or load object file for fb_sys_fops module
> mod: cannot find or load object file for uas module
>      MODULE       NAME                     SIZE  OBJECT FILE
> ffffffffc07400c0  qla2xxx                794624
> ./kernel-uek-4.14.35-1902.302.1.01.el7uek.rc1/lib/modules/4.14.35-1902.302.1.01.el7uek.rc1.x86_64/kernel/drivers/scsi/qla2xxx/qla2xxx.ko
> 
> I un-compressed qla2xxx.ko.xz  so it was found.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
