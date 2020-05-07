Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77EB1C99F0
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJN1DMr76oyGNd74ItK2r1Si8n9tbQlMNCvn8vFcbfk=; b=YSxcOOE41i2A8Y
	LjP6F/ZnZwSNiCg83ozl7kYp4G4Rai0+1FvDvxd4Cv/m8G5JrhiA3Gd3g4XaUE2QiYSu/OUK3CclI
	RAQj/DRqHjQQZE1sbxuQsurLmhIKm0eUu+FNGZaCZWAPbN1oiJOVPCOktFzuOr8xEzoTF/c514mdU
	tls+nQTRa/V/45LbmC6UX0L6eVVc2tGO8dHsAvJeIKjXJ0VTLbztLa2bJeKQ7PeMSmVr5X2rd6TBq
	W1ty34Fzoh0W5W49BaC0ApUvjkgZgLxuRjpRQo75FnCqWTYHNtnk4upfDL6Aex5d7slnjgVVxsMcO
	9rXWxFsTxdy9v+sfIa6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWleI-0007uG-Eh; Thu, 07 May 2020 18:53:34 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWleF-0007su-Uk
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:53:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588877610;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3EhH1A9gQMpfXypIl8DH4medFGIIF5ti8TqIyHhZSE0=;
 b=QDKy9YaZbgJBAs07KOxXaJKW8PS2hP2HEOS9oBRpYujtfrda8VxsU4Fdzr2STiH7rSFITc
 7t4fAxYWK1HPSYxSqze1AX/SSXhu2OJbzTy6BkQmKlG/0jMpH2BLn8Mndkg5aqRlVU8D9o
 48uovEFB0POmDQcGNV2rpp+ZUCEK5Qg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-Y-p7Je82PyWfiDY1P6m7tw-1; Thu, 07 May 2020 14:53:26 -0400
X-MC-Unique: Y-p7Je82PyWfiDY1P6m7tw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E09E107ACCD;
 Thu,  7 May 2020 18:53:24 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E7A721001B07;
 Thu,  7 May 2020 18:53:18 +0000 (UTC)
Date: Thu, 7 May 2020 14:53:15 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507185315.GH205881@optiplex-lnx>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507185046.GY11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507185046.GY11244@42.do-not-panic.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_115332_069573_D56ACB88 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: rdunlap@infradead.org, keescook@chromium.org, bhe@redhat.com,
 linux-doc@vger.kernel.org, corbet@lwn.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, cai@lca.pw, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:50:46PM +0000, Luis Chamberlain wrote:
> On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
> > Another, perhaps less frequent, use for this option would be
> > as a mean for assuring a security policy (in paranoid mode)
> > case where no single taint is allowed for the running system.
> 
> If used for this purpose then we must add a new TAINT flag for
> proc_taint() was used, otherwise we can cheat to show a taint
> *did* happen, where in fact it never happened, some punk just
> echo'd a value into the kernel's /proc/sys/kernel/tainted.
>

To accomplish that, the punk would need to be root, though, in which 
case everything else is doomed, already.
 
> Forunately proc_taint() only allows to *increment* the taint, not
> reduce.
> 
>   Luis
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
