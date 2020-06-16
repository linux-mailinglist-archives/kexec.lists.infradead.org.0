Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E871FBE10
	for <lists+kexec@lfdr.de>; Tue, 16 Jun 2020 20:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPTbxjyUfbT2NcHWmUywrvgwhzOjQdExL8vN3sFL29k=; b=i57zxMFVFaMI53
	5qmzWNz68ZODWquSp0CVt9HmtRsJu0qRzpOvI88cDBW4NsFip4oJDSyNml08x3YuUlSARgVPLP3wK
	0hmlvADvQNzLy97s2Dy1KpdYvEBNm3tVx2IuJkU2tyv93nZ22mtX3/18sDoiZH/cYleYRyusyVK/k
	LoRWU0LwknilTX52Gd/7debyi1u6v5CFw7LZ/autjBZrwz/qsZJG6tIE+Uz7g4XmVRXcUQ7V8wZNu
	SVJHQd/NxrfV7PVI7J2gwKdsDRJD1ORccK7SSkEvE2wEEJV2ozddqe/yJSawVpJV/DehjsmhVrhqp
	5PkE2JzhEsmmdoe4335A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGMQ-0006zw-Ju; Tue, 16 Jun 2020 18:31:02 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGMM-0006zL-Vu
 for kexec@lists.infradead.org; Tue, 16 Jun 2020 18:31:00 +0000
Received: by mail-pl1-x635.google.com with SMTP id j4so5508727plk.3
 for <kexec@lists.infradead.org>; Tue, 16 Jun 2020 11:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5S0R5KOS0eVN5ffWyi3JgOwmOTFEGE7HvsnOVejhXYI=;
 b=nbnxXUsVX4hRs3R+cqDAYMRsOMWQabw2UMHVtUu5x9oGKGYQcg5mTa7n6TUx2yH/+n
 DWdgFgGIoyg4sQN2DYqPfZM7ed2n+TWlWhZI5qfkbNQJWwZb7xE7TWYMHx8nWl6CbgCj
 GuR5kAfN5a9UxvJKAvTLqLWVhG3eNaM0QykDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5S0R5KOS0eVN5ffWyi3JgOwmOTFEGE7HvsnOVejhXYI=;
 b=UGHkH3Aa/lWEq1B/OepPypIh7DpU70jDvw3UmiBJC4kl0hCoFAeTBxuaYO8krXWLc2
 dLMfCnV5vPp89wRzFp/sOdgVO9RJZq1DbcuSYZEx2OzVyaasjKNJd78d5wLgSvtd8VH8
 If1msOy8g9/2mKo4XfsiPAghrCzkb15nFxikHzRb8Aq6MXJlNwadAYe1khw70MH5JXNl
 r7I/R5eBZXjJ/bjsTU4oQ6avqEFQVaquNRwuzLVUYTzZjQJ8fnSeFrIYwgQZ+58r49RW
 GjFa6KVf5jx6f7rqkSvbl5H00w8NNijbGh80fW4KRp/iaamnqOXCh90C3U0XaZKpI7ev
 ow7w==
X-Gm-Message-State: AOAM533ELMT1H99y5blkfWTMDDf3O8a3KE9RI6qYZyOwi6fa/rwZ5D9N
 XXoZ1DYQk4QcHKLAC513tJGnxQ==
X-Google-Smtp-Source: ABdhPJz0FYxqlT+0euPfvBnZUEAlLlzaqSSM9z3K/QSiRItP3jo19QdrhS4x6degcXQvMqcU6F689A==
X-Received: by 2002:a17:902:8681:: with SMTP id
 g1mr3100674plo.161.1592332258204; 
 Tue, 16 Jun 2020 11:30:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n69sm3722022pjc.25.2020.06.16.11.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:30:57 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:30:56 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] kexec_file: Use array_size() helper in memcpy()
Message-ID: <202006161130.EC036806@keescook>
References: <20200616182041.GA30841@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616182041.GA30841@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_113059_039987_86193E53 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, kexec@lists.infradead.org,
 Eric Biederman <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 01:20:41PM -0500, Gustavo A. R. Silva wrote:
> Use array_size() instead of the open-coded version in memcpy(). These
> sorts of multiplication factors need to be wrapped in array_size().
> 
> Also, while there, use the preferred form for passing a size of a struct.
> The alternative form where struct name is spelled out hurts readability
> and introduces an opportunity for a bug when the pointer variable type is
> changed but the corresponding sizeof that is passed as argument is not.
> 
> This issue was found with the help of Coccinelle and, audited and fixed
> manually.
> 
> Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
