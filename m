Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B6842A68
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 17:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fDcIWA4Dp57908odloO8m6ANHdeuOLfFLzoxrcovnY=; b=Q8y1ppJsFpa7q5
	7avCpJnxYshf+L5Elq+m+CjFAAUEZj0zkgOGzX25r8pQurc5P+gCSE1dxB1FuQXo48nIHYkP1IkJ3
	j9xpkPD3LpK3GRAMudxYoaPImXnHxVPqWsCQzALTO6LgrpYWHVFbUlpMyV+VLr8Pt2XS00Svwvblq
	Siv8ELzk+UAQiU0F68pLLCs3naMjLDxK1cqQuZsRvSgYVjeNw8iQ4duqT7HJS/rldELmDZTxu7+Fz
	+UKDLasZLVBNvB2we+h2SgeLbpLNJ5JaUCIYxN5kKiZ1NoUmy+rWCuoJcr78dOdD6DSfOcTAmPxzU
	4EoTUdKwCnnZSiBrrZ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4th-0007Ux-NY; Wed, 12 Jun 2019 15:10:45 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4tb-0007Th-Ex
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 15:10:41 +0000
Received: from zn.tnic (p200300EC2F0A6800329C23FFFEA6A903.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:6800:329c:23ff:fea6:a903])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id CB9571EC09C0;
 Wed, 12 Jun 2019 17:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1560352236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=5vgvKr0yj2ZHJzu6XBf8xEGzNqLaksW1SO4lqxw8S90=;
 b=iqYB5gjCfIS76EjmsEZ5Xhcz+/5fiigAoWXQCxKVusgsWllMn5vLNiGawGIkbooisTb6pF
 MTzgDzI161m3+ZJQYoQPwT2dV49WLwn+bJOjdUAWE25SNRQidoh7fOk2I55YNtU/6f4AaF
 doq9ON8uMNi0TmtzvtNfeIdnVzT2nts=
Date: Wed, 12 Jun 2019 17:10:33 +0200
From: Borislav Petkov <bp@alien8.de>
To: Baoquan He <bhe@redhat.com>, Thomas.Lendacky@amd.com
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190612151033.GJ32652@zn.tnic>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic>
 <20190608102659.GA9130@MiWiFi-R3L-srv>
 <20190610113747.GD5488@zn.tnic>
 <20190612015549.GI26148@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612015549.GI26148@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_081039_657170_3C8807E5 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, lijiang <lijiang@redhat.com>, peterz@infradead.org,
 dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 09:55:49AM +0800, Baoquan He wrote:
> With further investigation, the failure after applying Tom's patch is
> caused by OOM. When increase crashkernel reservation to 512M, kdump
> kernel can boot successfully. I noticed your crashkernel reservation is
> 256M, that will fail and stuck there very possibly.
> 
> So Tom's patch can fix the issue. We need further check why much more
> crashkernel memory is needed on those AMD boxes with sme support..

Yes, 256M for a kexec kernel sounds pretty much enough to me. So there's
something else at play here. I wonder if that workarea after _end, from
Tom's patch, needs so much room...

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
