Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDC7E2CD8
	for <lists+kexec@lfdr.de>; Thu, 24 Oct 2019 11:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpFwI2L6IXol8K5lvjnE48ET5AVvtPk4CqWT9IxE/LY=; b=K3+5iU5mo7FLLL
	w4VFRAo9o1gran0ejKmcc0Rd10Xuvn2FE5GiRz98FkyhPPWpC1o6l7xVnb7xPUxfFwK8h1E9J1Gcj
	PsnQFpz3cDPLKpeShf+0PSwzfWybCLuWynCGcQuL26Q2jhKllODWdTMgF7/iuhhY6Q+kJ4qgMhK1Y
	JsIkdv3MZbLflk5a3Efb3QIh3gZMyp/JJMKW57gFp3hT+sfEf7JWZ+zld7wGJdSfbVZue1Hud9eMb
	/WR4l1eLDK0WbE9c6FQudeZ/R6EDmE9Ob5BD1Vs3su5SASxCSvK8JpYTiF6KnTdAFnRe+KyaCA4tn
	7y3l5aXKXnakhpUAwE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZ8Z-0007Ar-Go; Thu, 24 Oct 2019 09:10:31 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZ8V-0007AN-Rx
 for kexec@lists.infradead.org; Thu, 24 Oct 2019 09:10:29 +0000
Received: from zn.tnic (p200300EC2F0F6D00111FCEB20B40B3F2.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0f:6d00:111f:ceb2:b40:b3f2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 807901EC0C31;
 Thu, 24 Oct 2019 11:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1571908217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=p2MX4Ow9Nchf/5umX33LnDQf+HNj5ziC3a5+3VA9nMw=;
 b=LPOYFUx05uRwUFWQ66WAoNjqsO4eppaWMZywV+KtOaGZTZP1SsbQhZY1QBHqX+o0aCdTFB
 6SDYd3fPsvTDVzeDsjH/H08UjQxde2tAY7gX2D0xcrndwQdn+uIpDBJ95uy5byb7atdndU
 ms4MPPNb3scm2RNU7dFOIKEnvBE0gEI=
Date: Thu, 24 Oct 2019 11:10:08 +0200
From: Borislav Petkov <bp@alien8.de>
To: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Message-ID: <20191024091008.GA31060@zn.tnic>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com>
 <20191022083015.GB31700@zn.tnic>
 <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
 <OSBPR01MB4006F33096F5E0AB8B8E648D956A0@OSBPR01MB4006.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB4006F33096F5E0AB8B8E648D956A0@OSBPR01MB4006.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_021028_210381_BC198A5E 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jgross@suse.com" <jgross@suse.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 'lijiang' <lijiang@redhat.com>, "bhe@redhat.com" <bhe@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 08:13:25AM +0000, d.hatayama@fujitsu.com wrote:
> I don't find the corresponding patch in the v5 patchset, so I comment here.

You don't?

https://lore.kernel.org/lkml/20191023141912.29110-2-lijiang@redhat.com/

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
