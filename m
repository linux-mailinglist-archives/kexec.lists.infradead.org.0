Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B82107795
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 19:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5iN/tQpNUABfAijWnLk1dQ3mtIy4ZSRW9PDg/8JaPfM=; b=tJOnsdJspapZNLf2nknU+5PX+D
	3jSDRTO/Ebc+K4d8hknMpuk9S7pHZ4v5fumQOPeg59gdKkN4IbdiuePZwn2rH4x2JMUT92Pba0716
	svlF4xqOVPlyYUgppXbFCGNBithkkQJVeBriQJ5uy0NJEjeIbxA+bAuGDSfyAbTXcKxuh/uRGDXEq
	xJEiPzJsXk/CuNJPnpIP/pqNvbmSdPlbLEOoX3oL2nZWOqNyAwWrO6f030S9zlZL3a6I3Ic75DesQ
	m2GiTO32Cxmi/nZ1ID8SMteEl3jrlB2foj3qtgtZFFMvD7bDfZLUVHdLQhl5ZAab28/cOkFy+Wsld
	pqluoDpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDyA-0008U4-G9; Fri, 22 Nov 2019 18:47:50 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDy7-0008TY-4x
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 18:47:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574448463;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HrxOWHtrSutc4eR5GfnmS1qTooLQ6ia5+2EOfFLimy0=;
 b=JQ7pNs70m6EobrKtQAZQKIsBcYnVkETFbeEbGnCLJHSGAPxhSjl5470UCzvUKN00Y2lLwS
 2KxTYiIbuQQ1hJ9YejUC95b+nXojh+fUXX5ACVVK9mJXVgoClN2WbWu1Mn6mG8IsNzGUw0
 0C1L+j5+QY3bAH/SQRleFK5NwUMVLqc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-0XLtcVHsO_Onc4l8_sw8Bw-1; Fri, 22 Nov 2019 13:47:41 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 705D7800054
 for <kexec@lists.infradead.org>; Fri, 22 Nov 2019 18:47:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 64D8761074
 for <kexec@lists.infradead.org>; Fri, 22 Nov 2019 18:47:40 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5837F18095FF
 for <kexec@lists.infradead.org>; Fri, 22 Nov 2019 18:47:40 +0000 (UTC)
Date: Fri, 22 Nov 2019 13:47:40 -0500 (EST)
From: Dave Anderson <anderson@redhat.com>
To: kexec@lists.infradead.org
Message-ID: <483111234.14383042.1574448460262.JavaMail.zimbra@redhat.com>
In-Reply-To: <mailman.13491.1574446920.2486.kexec@lists.infradead.org>
References: <mailman.13491.1574446920.2486.kexec@lists.infradead.org>
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
MIME-Version: 1.0
X-Originating-IP: [10.10.123.72, 10.4.195.10]
Thread-Topic: makedumpfile/arm64: Add support for ARMv8.2 extensions
Thread-Index: BhDvntdXA3vTa6zjMJ8oqwcu4+D4gw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: 0XLtcVHsO_Onc4l8_sw8Bw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_104747_268738_2027B7D2 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



----- Original Message -----
> 
> Hi Bhupesh,
> 
> I recall seeing a reference to modification are needed for the crash CLI also
> to support 5.4.0-rc with your kernel patches cited here.
>  
> Where would I find that at ?  I don?t see crash on Giblab.

https://github.com/crash-utility/crash

> 
> >>> 
> >>> 
> >>> Hi
> >>> 
> >>> 
> >>> I was able to fork and clone your work area .
> >>> 
> >>> I can see makedumpfile works now !
> >>> 
> >>> Fantastic ;;  Thank you for your patience !
> >>> 
> >> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
