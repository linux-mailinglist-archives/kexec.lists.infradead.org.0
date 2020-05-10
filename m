Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D45E1CC6F8
	for <lists+kexec@lfdr.de>; Sun, 10 May 2020 07:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2QVBI9W3ONCTNmXUe9AM/A6mCrnP++yb+pJu8g7k3g=; b=giCr0DVMM3nPT8
	kCI+47uVvRn7SqwSz+4TccYvpAZpOe8Hqe0eyYvdN2Ija0AGNB5BB8QJsnoqpZiE6uGPkF2AMB79K
	r6g/yRWpYGgt8njcbePo4WZTQyQD8/EI98Npp8Rg9+zdN0XVd3TnUrf8Qbs2EjigRbvFe+MDbbcrA
	waWcJuxFxwTMAW5LewzJgDt65QvueWQkBIKUTDbx9BwIXee6mIyM28U9iU3OIPXpSyCS0iZPW/BVY
	SXzrYi3nWfEOOcF/ToDKltREvqf6P9K/CSb4t9nSUdP6VpRhLIAsES7Eumnp50ajPWcFqfHFRvsSV
	JfJnqCJKcZTypqTjfGDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXeKt-0004sE-OR; Sun, 10 May 2020 05:17:11 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXeKp-0004qm-OJ
 for kexec@lists.infradead.org; Sun, 10 May 2020 05:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589087824;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tCJf3aD47ctQEj0+bjTncfKWspILH0i2eRAlZk7YIas=;
 b=YxgQZYe4I/CHnmdUFaOMDgRao/XwfIGEd6sMd943BOZiozuhVXug0eW2uuronT2KTr6sj9
 ow8UwEn6UpMm6MFagnMfqCcV4SDD1TFpOSh+fYNLXZBio0NxT7sIdCPB8QhyQ/PN+XmQEh
 04YlCRQ9Qs1EdUmW5ON8G0JZhyyqDN0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-1wSi7USNNkmzpDGYI08JnQ-1; Sun, 10 May 2020 01:17:00 -0400
X-MC-Unique: 1wSi7USNNkmzpDGYI08JnQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23DD980058A;
 Sun, 10 May 2020 05:16:57 +0000 (UTC)
Received: from localhost (ovpn-12-30.pek2.redhat.com [10.72.12.30])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B8EB7704C6;
 Sun, 10 May 2020 05:16:48 +0000 (UTC)
Date: Sun, 10 May 2020 13:16:46 +0800
From: Baoquan He <bhe@redhat.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v3] kernel: add panic_on_taint
Message-ID: <20200510051646.GF5029@MiWiFi-R3L-srv>
References: <20200509135737.622299-1-aquini@redhat.com>
 <20200510025921.GA10165@MiWiFi-R3L-srv>
 <acab7971-7522-3511-c976-e0237ceda4d0@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acab7971-7522-3511-c976-e0237ceda4d0@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_221707_914446_23AE02F8 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rafael Aquini <aquini@redhat.com>, linux-doc@vger.kernel.org, tiwai@suse.de,
 jeffm@suse.com, corbet@lwn.net, labbott@redhat.com, dyoung@redhat.com,
 AnDavis@suse.com, rpalethorpe@suse.de, keescook@chromium.org, jikos@kernel.org,
 cai@lca.pw, bunk@kernel.org, tytso@mit.edu, jeyu@suse.de,
 gregkh@linuxfoundation.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/09/20 at 09:10pm, Randy Dunlap wrote:
> On 5/9/20 7:59 PM, Baoquan He wrote:
> > Read admin-guide/tainted-kernels.rst, but still do not get what 'G' means.
> 
> I interpret 'G' as GPL (strictly it means that no proprietary module has
> been loaded).  But I don't see why TAINT_PROPRIETARY_MODULE is the only
> taint flag that has a non-blank c_false character.  It could just be blank
> also AFAICT.  Then the 'G' would not be there to confuse us.  :)

Yeah, seems c_false character is not so necessary. If no 'P' set, then
it means no proprietary modules loaded naturally. We may need clean up
the c_false in struct taint_flag, since c_true is enough to indicate
what want to check.



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
