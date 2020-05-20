Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE70C1DB058
	for <lists+kexec@lfdr.de>; Wed, 20 May 2020 12:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fyu/ag8ighh85stPvM/yaE5qdM4nAjPNa6sX0gqE7+4=; b=lXP5kjA6EvwccZ
	wE889BdgjB32lBIW6bFSW5FmUsriIaummwfrH8Gccn68yE6lcIKxuzgLeEsVOcjrQJO3G+R5POCg5
	EM1g8ZqgCZeId67lh4fBTTa2MVTKm6byjuqZhnkf3/EYZ+hzSdtC/voPVC8QvwN1nZWpp1Q6kvOlG
	55d10tGfAm+ai0CLf6BenXX9YfjwIHhHlvnhkNm7fbQOkedAOKHkwBAJjtNhL2nFzctBFVd0vLOwl
	SzxlLbjFlbld1wEDZM8i6QKqLyXQP9qK0McaKwCtglJrKXAf2MqmIFbotZn1I0O7aT+rRR7+WyphG
	7STa7Wts9tVwkXY05QjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbM65-00014F-3X; Wed, 20 May 2020 10:37:13 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbM5d-00012m-8L
 for kexec@lists.infradead.org; Wed, 20 May 2020 10:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589971003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fibGvE/yM8HBV36UGpstPnUDuVU7B8SEDeE+kJB/Hjs=;
 b=FsTK/Dxnk6DONI7T92gs1BDWE9nQy7OIYus67++VzDohhHmuFE01qACGWxeXsvYaPpG+OZ
 njMJ89wtjb7QX5lbDLejB2hfMQy3P0Uo+XoklGQGAYjdH1E1swQDql3DxCADWOyiBNrPNx
 jk+93z/iArbsThQi7aYqOmskINUzCqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-yublpX5AMc2VKbFNJFISDw-1; Wed, 20 May 2020 06:36:41 -0400
X-MC-Unique: yublpX5AMc2VKbFNJFISDw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1408835B44;
 Wed, 20 May 2020 10:36:39 +0000 (UTC)
Received: from localhost (ovpn-12-22.pek2.redhat.com [10.72.12.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 90D651943D;
 Wed, 20 May 2020 10:36:36 +0000 (UTC)
Date: Wed, 20 May 2020 18:36:33 +0800
From: Baoquan He <bhe@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] MAINTAINERS: add files related to kdump
Message-ID: <20200520103633.GW5029@MiWiFi-R3L-srv>
References: <20200520080557.13260-1-bhe@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520080557.13260-1-bhe@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_033645_398356_6E452ADD 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: dyoung@redhat.com, akpm@linux-foundation.org, kexec@lists.infradead.org,
 vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Kdump is implemented based on kexec, however some files are only
related to crash dumping and missing, add them to KDUMP entry.

Signed-off-by: Baoquan He <bhe@redhat.com>
Acked-by: Dave Young <dyoung@redhat.com>
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 83cf5c43242a..29c26e7a7a47 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9251,6 +9251,11 @@ L:	kexec@lists.infradead.org
 S:	Maintained
 W:	http://lse.sourceforge.net/kdump/
 F:	Documentation/admin-guide/kdump/
+F:	fs/proc/vmcore.c
+F:	include/linux/crash_core.h
+F:	include/linux/crash_dump.h
+F:	include/uapi/linux/vmcore.h
+F:	kernel/crash_*.c
 
 KEENE FM RADIO TRANSMITTER DRIVER
 M:	Hans Verkuil <hverkuil@xs4all.nl>
-- 
2.17.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
