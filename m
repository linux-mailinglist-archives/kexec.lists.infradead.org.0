Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB751BE49F
	for <lists+kexec@lfdr.de>; Wed, 29 Apr 2020 19:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJ6BNu6VgeU9lIrGktd3vm4NgsgXXLwZCGqdAhNyVbk=; b=dmH7xaXeMwrw+z
	w6ihm5W6uEcKKgOe72dmMVJizZxU15sTjatdFz8zWKzWpOwTdMpCoXn5pmsh1L9LqOZiXBDhk1BfR
	nrTF2x46jjtpAZPa9wFagwDTE5IDzncuUW9Dk1JxVpB3N11Ji3UvxGI7hEpKTIK5dXlzQFVX4TFyJ
	qyeiQpiyosUvp7wUGff7jqq8159tmrOjhuYufhUFbZ9tAKUAfOCvIDJ8p8Rv2FOH2ISmUwDNEv3kZ
	79KVXSvFRLgALSBczf1nG7+7CciB62Q8u8nnf4Iq77zlpFjG0WLKnI9eamFzCBxxQXNonxQbLudCP
	ot0STrQHtsxf4Qv0AI7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq6O-0003El-P0; Wed, 29 Apr 2020 17:02:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq5D-0002GH-SI; Wed, 29 Apr 2020 17:01:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2104C11D4;
 Wed, 29 Apr 2020 10:01:15 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5CC93F73D;
 Wed, 29 Apr 2020 10:01:12 -0700 (PDT)
Subject: Re: [PATCH v9 05/18] arm64: trans_pgd: pass NULL instead of init_mm
 to *_populate functions
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-6-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <d19f4bc5-ad5b-5dad-0d50-271817b6c9aa@arm.com>
Date: Wed, 29 Apr 2020 18:01:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-6-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100115_990005_A9F028BD 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> trans_pgd_* should be independent from mm context because the tables that
> are created by this code are used when there are no mm context around, as
> it is between kernels. Simply replace mm_init's with NULL.

arm64's p?d_populate() helpers don't use the mm parameter, so it doesn't make any
difference. This was originally done so that if we ever needed anything from the mm, we
didn't get a NULL dereference or EL0 behaviour due to a future '!= &init_mm'.

If you think it matters,
Acked-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
