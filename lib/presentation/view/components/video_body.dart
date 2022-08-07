import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtubeapi/domain/model/video_model.dart';
import 'package:youtubeapi/presentation/notifier/video_notifier.dart';

class VideoBody extends ConsumerWidget {
  const VideoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final video = ref.watch(videoNotifierProvider);
    return video.when(
      data: ((data) => VideoList(data)),
      error: (context, error) => ErrorView(error),
      loading: () => const LoadingView(),
    );
  }
}

class VideoList extends StatelessWidget {
  const VideoList(this.data, {Key? key}) : super(key: key);

  final List<VideoModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: ((context, index) {
        final video = data[index];
        return Card(
          child: ListTile(
            leading: Text(video.thumbnails!.url ?? '画像'),
            title: Text(video.title ?? 'タイトル'),
            subtitle: Text(video.description ?? '説明'),
          ),
        );
      }),
    );
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class ErrorView extends StatelessWidget {
  ErrorView(this.error, {Key? key}) : super(key: key);
  StackTrace? error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error.toString()),
    );
  }
}
