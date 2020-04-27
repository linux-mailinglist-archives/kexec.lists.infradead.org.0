Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FA91BA295
	for <lists+kexec@lfdr.de>; Mon, 27 Apr 2020 13:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W1F1S7WLDRNPQEPiqGbuh6A05puV/9r8GgmA1glCI3M=; b=BhGVANuymh7mVo
	9QED2B+XCRBT56OfyfDWURDGVyBNsUhFO7lXFlxq1Z0kEQ3d3iNyj2knSwSE/NWiwDgksnH43kJgQ
	mFyFv0Yhk/DuWR1cfgFuq1HxizfSkGt0b2whOBfcEj4uZp46Rt1HdBMoW7FV/7vkIFpFnRFkOeuog
	uaYj5M9/d593tTxPCHvkSoG4aikW7rco+jDYDyH4tJ+7XBPLeV+xtYGacl3M1cEMce/BGtCKYpMjZ
	8N/3Mcq5xRvTId92t/nsrTVWqWqzpQir2Wd0WtBVMUhJZ16SGaoRihimchq92RMKiMrk2enhAxvYU
	MFwfuUB/B4/p08bBTStQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT28I-0004hv-Pm; Mon, 27 Apr 2020 11:41:06 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT28G-0004hU-SP
 for kexec@lists.infradead.org; Mon, 27 Apr 2020 11:41:05 +0000
Received: by mail-il1-x143.google.com with SMTP id r2so16328498ilo.6
 for <kexec@lists.infradead.org>; Mon, 27 Apr 2020 04:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=F+HbPvxQnRBlqBFKy/zn6110uxUPAWY6eSsMY6+ckPY=;
 b=gyhur46zBd2J4ErWZN2Wr1DzSL5A/f491REyzMI+qUJS1AkX1EF6ZUwRsIb8lTPpnP
 85H8T2+WRlSh9z1sJO++XnnANVDJvFxgZVEVXx/eBA4jP3qQppM1Jb/6b5xP/F+muDWA
 HWXV+6PKTYqKOAlQgRrivuezDVfPTqsBdd+DjP9TqaHGrEgeg8dykE021P72kJXF2ZtM
 GCizy19KrTP9/KKgjtQbfrDGLVo2xHVOQXsH5zBKemN2bQw4OsUzNGWijakKNIorJFPi
 2BIRgbeIOLNd3XH1MAGR4z6gPurQOOqjl28dhdRpGgmYo1NgbEuKisKf8MfoVRLAFWp2
 b/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=F+HbPvxQnRBlqBFKy/zn6110uxUPAWY6eSsMY6+ckPY=;
 b=oi8cJElY501mf7JWBnkS90GWef5LgANODH40AFzZl4QwmBLzNREVxP2XUFfbOE6+TS
 7NNXh1WrEbL4XVQZBD2v0lq937OuM2txnDJ0n5Iu3mvgvkVfSMqvO9eCUCmM38WTG/aa
 YowJW2LEoXLHJY56ck1GZOAqVR8kG4UC2G8cfzl18zP/0btHVTcQYS16cmqoJgJ0L7t+
 aGpJntRz6asqLN2RUgEkNLy6z05/WmOI9vAftc9SdhXnKH8RjaaUvAKau1YVbLbPMapf
 5XTlHS3JH5VKTmSgj6+oLbSHQHb1pLsaYMcMQhJPbl/4AZ2lt4ED+zQlDeewA7a3MnKK
 Cw3A==
X-Gm-Message-State: AGi0PubAjm6W7PC3cLpS4tO3EkuUdGRun/NnAtOkok2tGQ2vJjpqztxW
 jcIAjgIW/2VD8ANlpx+FXAMwCu95pktHPFPuHLs=
X-Google-Smtp-Source: APiQypIxXj+BykxkQlHPhrWRmh8cErkfIla/aWFxp/Z0rnfOAF+a0Opg2L3mFDxFmQOUGS1UxiN+VBD+iB4pdWuVWQg=
X-Received: by 2002:a92:50f:: with SMTP id q15mr21210781ile.4.1587987664162;
 Mon, 27 Apr 2020 04:41:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:8f89:0:0:0:0:0 with HTTP; Mon, 27 Apr 2020 04:41:03
 -0700 (PDT)
From: Ruben CONVY <andrewboccc@gmail.com>
Date: Mon, 27 Apr 2020 12:41:03 +0100
Message-ID: <CAHVC0+BUDofvorH_OcPXRx-=OZEwfpP7KdZHNg2LzUpRQHM+tg@mail.gmail.com>
Subject: Why continued silence 2
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_044104_915488_8226C57C 
X-CRM114-Status: UNSURE (   0.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [convy0090[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrewboccc[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: convy0090@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Did you receive my previous email regarding your family inheritance?
Reply strictly through: convy0090@gmail.com
Best Regards,
Ruben CONVY

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
