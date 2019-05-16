Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6A820120
	for <lists+kexec@lfdr.de>; Thu, 16 May 2019 10:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMsM4cq7+EM34c8aBRQGjfmE4E12zwJT1JEa98HBMos=; b=MgFszZ2DGsz3Ju
	HkH2fEhrIey3iNTIhY0xwugscS73saTH8ZQLybAxA3oPeflJ9/QfYCQyh25RMQm21odWOhc+c/tXt
	ER069muy5CP7jbQvxY8VXVuPf8dzy0JtOGZ8pjkSC5eKSbFQ7n7+HDn5/MKCcNXiOUMxDGq49kOha
	9V7T3p5lkRQBXdagt7TTnvj7MQeJE5epWpV2zR3uNItgUKPFg3K2hLfGxs2jPz4TZDH5PHQ8JtzND
	QUMaWh4xjelLJQq/z7ER22KVQfQNUYM669quHimBxCb2dB6V6oy1PRs0JdiDi8IlNTrmEsfYxSro4
	+qUtTSMK4lM3ntP4T5HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBYT-00033p-AO; Thu, 16 May 2019 08:15:57 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBYL-00033E-9G
 for kexec@lists.infradead.org; Thu, 16 May 2019 08:15:51 +0000
Received: from [IPv6:2003:ec:2f0d:4a00:5552:641d:f8e2:cac7]
 (p200300EC2F0D4A005552641DF8E2CAC7.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0d:4a00:5552:641d:f8e2:cac7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B002D1EC0BF2;
 Thu, 16 May 2019 10:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1557994535;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ewtqx+bkyBMd8uS2DF/QGEeIIo6FCVdtHuG13FgBMvU=;
 b=S/BN8+l+KcoTf9YialcZ+3Hgw1yTnCUXRTRsjPLB8qwZo8Oe883h3U9+LPTXhZXjRjEU6O
 ikSoL2Ybb+jCPP9PsbfZLicFGCvceijPi7dBiE/itJlJxvo9r76tAHsHjnv5A27t857AQX
 2uKQCPW9Fraclf9umJt3SEuZ4rQuw30=
Date: Thu, 16 May 2019 10:15:33 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <4707fb2d-b7d3-34e3-a488-8aa9bdca05f1@redhat.com>
References: <20190430074421.7852-1-lijiang@redhat.com>
 <20190430074421.7852-3-lijiang@redhat.com> <20190515133006.GG24212@zn.tnic>
 <4707fb2d-b7d3-34e3-a488-8aa9bdca05f1@redhat.com>
MIME-Version: 1.0
Subject: Re: [PATCH 2/3 v3] x86/kexec: Set the C-bit in the identity map page
 table when SEV is active
To: lijiang <lijiang@redhat.com>
From: Boris Petkov <bp@alien8.de>
Message-ID: <0650D79F-2B12-4A80-A37A-F318B5C9ECBC@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_011549_485148_C3417462 
X-CRM114-Status: UNSURE (   4.03  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On May 16, 2019 3:12:26 AM GMT+02:00, lijiang <lijiang@redhat.com> wrote:
>OK, i will modify it according to your suggestion and post again.

No need - i fixed it up already. 

-- 
Sent from a small device: formatting sux and brevity is inevitable. 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
