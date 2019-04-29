Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847CFE30E
	for <lists+kexec@lfdr.de>; Mon, 29 Apr 2019 14:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsJGafQJEuOMh5JKEDuHGdSK2vIhqUl8bCtdyIJSt88=; b=nyxftW2UvsESsb
	LeaVRZV4MDjVGJGRFlULbfFeSKXJ90S0sIMY51MboTbJrcIXcOFFdlHTd+o7NXhA8XN0C2jvj1pp9
	RG5A8rjfc3JEzaTgPKWfARC19rDmXcmx8rZxd8iUFu2YpPR5sNiWqyFRjM3oukRZU9iWFcfykPB4C
	NMxOtfvp11LQ6t4Ra1nYK4ZKJAkYgcuZTPjfuum7MSnu9JMOPDFjgPDWmKweW9q3rtqyy0Xy2AJjQ
	psqpPEvAO/TraS0mGEg+3llVnStc4Fxl/zE6ioZAeqtrtFxQf4Qf9YLLul9C7iXp/nb1aFsEm1iz+
	Ivv+j+HEANOTlyceHeSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5kb-0004xG-F5; Mon, 29 Apr 2019 12:51:17 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5kX-0004wR-Ah
 for kexec@lists.infradead.org; Mon, 29 Apr 2019 12:51:15 +0000
Received: from zn.tnic (p200300EC2F073600329C23FFFEA6A903.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f07:3600:329c:23ff:fea6:a903])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E61C11EC027B;
 Mon, 29 Apr 2019 14:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1556542265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=bA2DoZBdBxjCQTavTzxSc5Np+MuR/nnLiokGPyDt0i8=;
 b=HVlw3m+fIF2XMTA1R+vvf1ylQ6diXofFpsgL4of6CWSFQb6v4/OEzkOvM6zB1xxzh0iPlC
 dctwnxi0SXRhG0k7iRlkIwjEHwVBT5Wxhfhl+iwKoNWLR6gP/15u0urGvUvWIpVeHVRQjC
 qJUrgog+zUByu6mW7RxYBNYyMsVaJS8=
Date: Mon, 29 Apr 2019 14:50:59 +0200
From: Borislav Petkov <bp@alien8.de>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v5 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190429125059.GB2324@zn.tnic>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190427161121.GC12360@zn.tnic>
 <20190428054114.GS3584@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428054114.GS3584@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_055113_524632_97D402F3 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: x86@kernel.org, kasong@redhat.com, fanc.fnst@cn.fujitsu.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 j-nomura@ce.jp.nec.com, tglx@linutronix.de, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 01:41:14PM +0800, Baoquan He wrote:
> About this place, do you think below change is OK to you?
> 
> ~~~
> The current code only builds identity mapping for physical memory during
> kexec-type loading. The regions reserved by firmware are not covered.
> In the later code change, the boot decompressing code of kexec-ed kernel
> will try to access EFI systab and ACPI tables, lacking identity mapping for
> them will cause error and reset system to firmware.

Yap, better.

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
