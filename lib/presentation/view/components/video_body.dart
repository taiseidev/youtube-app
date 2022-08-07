import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtubeapi/domain/model/video_model.dart';
import 'package:youtubeapi/presentation/notifier/video_notifier.dart';

class VideoBody extends ConsumerWidget {
  VideoBody({Key? key}) : super(key: key);
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final video = ref.watch(videoNotifierProvider);
    return video.when(
      data: ((data) => Column(
            children: [
              VideoSearch(_controller),
              const SizedBox(
                height: 24,
              ),
              VideoList(data, _controller),
            ],
          )),
      error: (context, error) => ErrorView(error),
      loading: () => const LoadingView(),
    );
  }
}

class VideoSearch extends ConsumerWidget {
  VideoSearch(this.controller, {Key? key}) : super(key: key);
  TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          suffix: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => ref
                .read(videoNotifierProvider.notifier)
                .searchVideo(controller.text),
          ),
        ),
      ),
    );
  }
}

class VideoList extends ConsumerWidget {
  VideoList(this.data, this.controller, {Key? key}) : super(key: key);

  final List<VideoModel> data;

  TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => ref
            .read(videoNotifierProvider.notifier)
            .searchVideo(controller.text),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, index) {
            final video = data[index];
            return Card(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.network(
                      video.thumbnails!.medium!.url ??
                          'https://images.unsplash.com/photo-1603787081207-362bcef7c144?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
                      fit: BoxFit.cover,
                      width: 50.0,
                      height: 50.0),
                ),
                title: Text(video.title ?? 'タイトル'),
                subtitle: Text(video.description ?? '説明'),
              ),
            );
          }),
        ),
      ),
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
